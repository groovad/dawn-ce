# frozen_string_literal: true

require 'csv'
require 'date'
# NOTE: Add String#singularize support
require 'sequel'
require 'sequel/extensions/inflector'

module Dawn
  # CSV Dataset for import to database
  #
  # @since 0.1.0
  class Dataset
    include Enumerable

    # Supported languages
    #
    # @since 0.1.0
    LANGUAGE_SET = /(_tcn|_en|_scn|_kr|_fr|_ina|_thai)$/

    # @since 0.1.0
    attr_reader :source, :language

    # @param source [Pathname|String] the csv source path
    # @param language [String] the language to load
    #
    # @since 0.1.0
    def initialize(source, language = 'tcn')
      @source = source
      @language = language.to_s
    end

    # @return [String] model name
    #
    # @since 0.1.0
    def model_name
      @model_name ||=
        source.basename.to_s[/([a-zA-Z0-9]+)\.csv/, 1].singularize
    end

    # @return [Sequel::Model] the mode
    #
    # @since 0.1.0
    def model
      # TODO: Replace namespace from Unlight to Dawn
      @model ||= Kernel.const_get("Unlight::#{model_name}")
    end

    # @return [Hash] table schema
    #
    # @since 0.1.0
    def schema
      @schema ||= Unlight::DB.schema(model.table_name).to_h
    end

    # Import data to database
    #
    # @param block [Proc] the block post process imported rows
    #
    # @since 0.1.0
    def import(batch_size: 1000, &block)
      lazy.each_slice(batch_size) do |rows|
        model.multi_insert(rows)
        yield rows.size, rows if block_given?
      end
    end

    # @param block [Proc]
    #
    # @since 0.1.0
    def each(&block)
      items.each { |row| yield process(row.to_h) }
    end

    # @return [Array<CSV::Row>] CSV rows
    #
    # @since 0.1.0
    def items
      @items ||= CSV.open(source, headers: true)
    end

    # Prepare data for import
    #
    # @param data [Hash] the item to format
    #
    # @return [Hash] the formated item
    #
    # @since 0.1.0
    def process(row)
      row
        .yield_self(&method(:localize_column))
        .yield_self(&method(:format_datetime))
        .yield_self(&method(:set_updated_time))
        .yield_self(&method(:fill_empty_data))
    end

    # Pick current locale column
    #
    # @param data [Hash] the data to format
    #
    # @return [Hash] the localized row
    #
    # @since 0.1.0
    def localize_column(row)
      row
        .map do |key, value|
          next [key, value] unless key.match?(LANGUAGE_SET)
          next unless key.end_with?(language)

          [key.sub(/_#{language}$/, ''), value]
        end
        .compact
        .to_h
    end

    # Parse date time string
    #
    # @param data [Hash] the data to format
    #
    # @return [Hash] the formated row
    #
    # @since 0.1.0
    def format_datetime(row)
      row.map do |key, value|
        next [key, value] if value.nil?
        next [key, value] unless key.end_with?('_at')

        [key, DateTime.parse(value)]
      end.to_h
    end

    # Set Update At column
    #
    # @param data [Hash] the data to update
    #
    # @return [Hash] the updated data
    #
    # @since 0.1.0
    def set_updated_time(row)
      row['updated_at'] = Time.now
      row
    end

    # Fill empty data
    #
    # @param data [Hash] the data to update
    #
    # @return [Hash] the updated data
    #
    # @since 0.1.0
    def fill_empty_data(row)
      row.map do |key, value|
        next [key, value] if key.end_with?('_at')
        next [key, ''] if schema[key.to_sym][:type] == :string && value.nil?

        [key, value]
      end.to_h
    end
  end
end
