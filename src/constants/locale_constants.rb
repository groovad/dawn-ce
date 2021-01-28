# Unlight
# Copyright (c) 2019 CPA
# Copyright (c) 2019 Open Unlight
# This software is released under the Apache 2.0 License.
# https://opensource.org/licenses/Apache2.0

# 翻訳用定数ファイル

module Unlight
  # ServerUserLimit 0=制限なし
  SERVER_USER_LIMIT = 0

  # サーバタイプ
  THIS_SERVER = SERVER_SB

  # クジのバージョン
  OLD_LOT = false

  # アバター基本回復秒
  # AVATAR_RECOVERY_SEC = 900
  AVATAR_RECOVERY_SEC = 1800
  #ボーナス設定
  EXP_POW = 5
  GEM_POW = 10
  DUEL_BONUS_POW = 10

  # セール終了直前の付加時間(0秒)
  SALE_ADDITIONAL_TIME = 0

  RANKING_COUNT_NUM = 1000
  QUEST_CAP = 35
  EVENT_QUEST_CAP = 3030
  TUTORIAL_QUEST_CAP = 2012
  CHARA_VOTE_QUEST_CAP = 5009
  INVITE_MAX = 3 # 招待による最大プレゼント数

  INVITE_PRESENTS = [3, 12, 9] # チケット付与8/31～
  INVITE_SUCC_LEVEL = 0 # インバイトアイテムを与えるレベル（０の場合作ったとき）
  COMEBACK_EVENT = false
  COMEBACK_CHECK_PERIOD = 60 * 60 * 24 * 30 # カムバックの範囲(1ヶ月)
  COMEBACK_SEND_PRESENTS  = [9] # カムバックした人のフレンドの報酬
  COMEBACKED_PRESENTS     = [ # カムバック側の報酬
    { type: TG_AVATAR_ITEM, id: 9, num: 5, sct_type: SCT_WEAPON }, # チケット*5
    #    { :type => TG_AVATAR_PART, :id => 325,  :num => 1, :sct_type => SCT_WEAPON }, # 不思議なティアラ III
    #    { :type => TG_AVATAR_PART, :id => 328,  :num => 1, :sct_type => SCT_WEAPON }, # 気まぐれフェアリー III
    #    { :type => TG_AVATAR_PART, :id => 331,  :num => 1, :sct_type => SCT_WEAPON }, # 怪しいイヤリング III
    #    { :type => TG_AVATAR_PART, :id => 334,  :num => 1, :sct_type => SCT_WEAPON }, # 儚きワンド III
    { type: TG_SLOT_CARD,   id: 5000, num: 2, sct_type: SCT_WEAPON }, # オルタサイト
    { type: TG_SLOT_CARD,   id: 5026, num: 1, sct_type: SCT_WEAPON }, # 銀の妖精のレリーフ
    { type: TG_SLOT_CARD,   id: 6002, num: 1, sct_type: SCT_WEAPON }, # クロリスクレスト
  ]

  ROOKIE_SALE_CHECK_ACHEVEMENT_ID = 43 # 課金停止後に出現しないよう変更
  ROOKIE_SALE_START_COND_AT_TIME  = 60 * 60 * 24 * 30 # クリアセール開始できるユーザーの条件時間(30日以内)
  ROOKIE_SALE_TIME                = 60 * 60 * 24 # 初心者レコードクリアセール時間(24時間)

  ROOKIE_PRESENT_FLAG = true # 初心者キャンペーンフラグ（2016年11月から恒常化）
  ROOKIE_PRESENTS = [ # 初心者キャンペーンフラグ（2016年11月から恒常化）
    { type: TG_AVATAR_PART, id: 337, num: 1 },                  # 幻惑のティアラ III
    { type: TG_AVATAR_PART, id: 340, num: 1 },                  # 陽気なフェアリー III
    { type: TG_AVATAR_PART, id: 343, num: 1 },                  # 魔性のイヤリング III
    { type: TG_AVATAR_PART, id: 346, num: 1 },                  # 強欲のワンド III
    { type: TG_AVATAR_ITEM,  id: 12, num: 5 },  # 超刻の砂時計*5
    { type: TG_AVATAR_ITEM,  id: 3,  num: 5 },  # 魔女の秘薬*5
    { type: TG_AVATAR_ITEM,  id: 4,  num: 5 },  # ラッキークローバー*5
    { type: TG_AVATAR_ITEM,  id: 9,  num: 10 }, # チケット*10
    { type: TG_CHARA_CARD, id: { 1 => 6, 21 => 26, 31 => 36, 101 => 106, 111 => 116 }, num: 1 }, # 初期キャラのR1
    { type: TG_GEM, id: 0, num: 3000 }, # 3000GEM
  ]

  CHARA_VOTE_EVENT = false # キャラ人気投票イベントフラグ
  CHARA_VOTE_RANKING_HIDE_TIME = Time.gm(2014, 4, 28) # キャラ人気ランキング表示終了

  EVENT_LOGIN_BONUS_FLAG = false # ログインボーナスをイベント用に切り替えるフラグ
  PLUS_EVENT_LOGIN_BONUS_FLAG = false # ログインボーナスにイベント用のものを追加するフラグ

  #イベント開始時配付アイテム定数
  EVENT_START_ITEM_SEND_CHECK_AT = Time.new(2006, 9, 14, 13, 15).utc
  EVENT_START_ITEM_SEND_ID = 356

  QUEST_EVENT_FLAG = true
  QUEST_EVENT_RANKING_NAME = 'Holy Point'

  # 1日セール判定フラグ
  ONE_DAY_SALE_FLAG = false
  ONE_DAY_SALE_CHECK_AT = Time.new(2016, 5, 5, 18).utc # ログイン時間チェック

  PRF_DMG_EVENT_RANKING_NAME = 'All Damage'
  # 渦ダメージイベント集計開始時間
  TOTAL_EVENT_RANKING_CHECK_PRF_TIME = Time.new(2116, 9, 14, 17, 0).utc

  # 対戦相手カウントレコードチェック開始
  RECORD_OTHER_AVATAR_DUEL_CHECK_START = Time.new(2115, 9, 16, 13, 0).utc

  # イベントアイテムがでるか
  HIGH_LOW_EVENT_REWARD_ENABLE = false

  # ランダムセール発生フラグ
  RANDOM_SALE_FLAG = false

  # 渦自動発生イベントフラグ
  PRF_AUTO_CREATE_EVENT_FLAG = false
  # 自動発生渦の曜日 [0:日,1:月,2:火,3:水,4:木,5:金,6:土]
  PRF_AUTO_PRF_WDAY = [0, 3, 6]
  # 自動発生渦の最大数
  PRF_AUTO_PRF_MAX = 10
  # 自動発生渦の発生インターバル
  PRF_AUTO_CREATE_INTERVAL = 60 * 180 # 180分
  # 自動発生渦の救援送信インターバル
  PRF_AUTO_HELP_INTERVAL = 60 * 3 # 3分

  #  INVITE_PRESENTS  = [3,12]
  DUEL_IP_CHECK = false
  CHAT_START_DLG_1 = ':****** チャンネル'
  CHAT_START_DLG_2 = 'にログイン'
  CHAT_START_DLG_3 = ' [参加人数:'
  CHAT_START_DLG_4 = '] *****'

  DUEL_PENALTY = DUEL_PENALTY_TYPE_ABORT
  # 中断ペナルティ時間
  DUEL_ABORT_PENALTY_TIME = (60 * 10)
  # 連続中断回数保存時間（1週間）
  DUEL_ABORT_CNT_REC_TIME = (60 * 60 * 24 * 7)
  # 連続中断ペナルティ回数
  DUEL_ABORT_CNT_NUM = 3
  # 連続中断ペナルティ時間（3日）
  DUEL_CNT_ABORT_PENALTY_TIME = (60 * 60 * 24 * 3)
  # クイックマッチのID,IPキャッシュ保存時間 (24時間)
  DUEL_RADDER_LIST_CACHE_TIME = (60 * 60 * 8)
  # マッチングをコストで行うか
  DUEL_RADDER_MATCH_COST = true

  LOGIN_BONUS_OFFSET_TIME = 0

  # 週間Duelレコード定数
  WEEK_DUEL_ACHIEVEMENT_CHECK_IDS = [288, 289, 290, 291, 292, 293, 294]
  # 週間Questレコード定数
  WEEK_QUEST_ACHIEVEMENT_CHECK_IDS = [429, 430, 431, 432, 433, 434, 435]
  # 日刊レコード定数
  DAILY_ACHIEVEMENT_CHECK_IDS = []
  # 出現条件がある日刊レコードを使用するフラグ
  CONDITIONS_DAILY_ACHIEVEMENT_FLAG = false

  # 装備カード取得アチーブメントID
  GET_WEAPON_ACHIEVEMENT_IDS = [376, 377]

  # DB接続チェックを行うか
  DB_CONNECT_CHECK = false

  # DuelDialogue
  DUEL_NAME_PL = 'あなた'
  DUEL_NAME_FOE = '相手'
  DUEL_NAME_WATCH = '__NAME__さん'

  ACTV_START_TITLE = 'Unlightスタート！！'
  ACTV_START_BODY  = '__name__[__nickname__]さんはUnlightを始めました'

  TAG_COLLECT_EVENT_ON = false
  TAG_INIT_CHECK_ST = Time.new(2016, 8, 17, 13, 15).utc
  TAG_INIT_CHECK_ED = Time.new(2016, 8, 31, 16).utc
  XMAS_EVENT_ON = false
  SPECIAL_MESSAGE_SET = {
    RED_POMEGRANATE_RANDOM_HP_1: '赤い柘榴が発動！　互いのHPが1になった',
    RED_POMEGRANATE_RANDOM_HP_5: '赤い柘榴が発動！　互いのHPが5になった',
    RED_POMEGRANATE_RANDOM_HP_MAX: '赤い柘榴が発動！　互いのHPが全回復した',
    RED_POMEGRANATE_RANDOME_HAND_0: '赤い柘榴が発動！　互いの手札が空になった',
    RED_POMEGRANATE_RANDOME_HAND_8: '赤い柘榴が発動！　互いの手札が8枚になった',
    RED_POMEGRANATE_RANDOME_HAND_15: '赤い柘榴が発動！　互いの手札が15枚になった',
    RED_POMEGRANATE_RANDOME_DAMEGE_ALL_1: '赤い柘榴が発動！　全キャラクターにダメージ1',
    RED_POMEGRANATE_RANDOME_DAMEGE_ALL_3: '赤い柘榴が発動！　全キャラクターにダメージ3',
    RED_POMEGRANATE_RANDOME_DAMEGE_ALL_5: '赤い柘榴が発動！　全キャラクターにダメージ5',
    RED_POMEGRANATE_RANDOME_HEAL_ALL_1: '赤い柘榴が発動！　全キャラクターが1回復した',
    RED_POMEGRANATE_RANDOME_HEAL_ALL_3: '赤い柘榴が発動！　全キャラクターが3回復した',
    RED_POMEGRANATE_RANDOME_HEAL_ALL_5: '赤い柘榴が発動！　全キャラクターが5回復した',
    RED_POMEGRANATE_RANDOME_MOVE_1: '赤い柘榴が発動！　距離がひとつ離れた',
    RED_POMEGRANATE_RANDOME_MOVE_2: '赤い柘榴が発動！　距離がふたつ離れた',
    RED_POMEGRANATE_RANDOME_MOVE_0: '赤い柘榴が発動！　しかし、なにも効果はなかった',
    RED_POMEGRANATE_RANDOME_MOVE_M1: '赤い柘榴が発動！　距離がひとつ近付いた',
    RED_POMEGRANATE_RANDOME_MOVE_M2: '赤い柘榴が発動！　距離がふたつ近付いた',
    RED_POMEGRANATE_RANDOM_BOSS_HP_1: '赤い柘榴が発動！　調べは暴走する…！',
    RED_POMEGRANATE_RANDOM_BOSS_HP_5: '赤い柘榴が発動！　境界が揺らぐ…！',
    RED_POMEGRANATE_RANDOM_BOSS_HP_MAX: '赤い柘榴が発動！　永劫回帰',
    DREAM_STICK_X2: 'ドリームステッキの効果により、攻撃ダイスが2倍になった。',
    DREAM_STICK_X3: 'ドリームステッキの効果により、攻撃ダイスが2倍になった。',
    DREAM_STICK_X4: 'ドリームステッキの効果により、攻撃ダイスが4倍になった。',
    DREAM_STICK_X6: 'ドリームステッキの効果により、攻撃ダイスが2倍になった。',
    WANDERING_FEATHER_2D3: '彷徨う羽の効果により、攻撃ダイスが3分の2になった。',
    WANDERING_FEATHER_1D2: '彷徨う羽の効果により、攻撃ダイスが2分の1になった。',
    WANDERING_FEATHER_1D3: '彷徨う羽の効果により、攻撃ダイスが3分の1になった。',
    WANDERING_FEATHER_0: '彷徨う羽の効果により、攻撃ダイスが0になった。',
    EX_THIRTEEN_EYES: '__DAMAGE__のダメージが追加された。',
    THIRD_STEP: '__DAMAGE__のダメージが無効化された。'
  }

  ATTRIBUTE_REGIST_MESSAGE_SET = {
    ATTRIBUTE_REGIST_MESSAGE_DEATH: '即死攻撃に対する抵抗により、技の効果が変化する...',
    ATTRIBUTE_REGIST_MESSAGE_HALF: 'HP半減攻撃に対する抵抗により、技の効果が変化する...',
    ATTRIBUTE_REGIST_MESSAGE_CONSTANT: 'ダメージへの抵抗が発生...',
    ATTRIBUTE_REGIST_MESSAGE_DYING: 'HP固定化攻撃に対する抵抗により、技の効果が変化する...',
    ATTRIBUTE_REGIST_MESSAGE_ZAKURO: 'not use.',
    ATTRIBUTE_REGIST_MESSAGE_EXCHANGE: 'HP交換に対する抵抗により、技の効果が変化する...',
    ATTRIBUTE_REGIST_MESSAGE_DIFF: '差分攻撃への抵抗により、技の効果が変化する...'
  }

  # ============== ログインボーナス関連定数 ==================
  LOGIN_BONUS_ITEM = [
                      ##通常時用のログインボーナス
                      [TG_GEM, 0, 50, 1],
                      [TG_GEM, 0, 50, 1],
                      [TG_GEM, 0, 50, 1],
                      [TG_CHARA_CARD, 0, 10001, 1],
                      [TG_CHARA_CARD, 0, 10001, 1],
                      [TG_CHARA_CARD, 0, 10001, 1],
                      [TG_CHARA_CARD, 0, 10002, 1],
                      [TG_CHARA_CARD, 0, 10002, 1],
                      [TG_CHARA_CARD, 0, 10002, 1],
                      [TG_CHARA_CARD, 0, 10003, 1],
                      [TG_CHARA_CARD, 0, 10003, 1],
                      [TG_CHARA_CARD, 0, 10003, 1],
                      [TG_AVATAR_ITEM, 0, 5, 1],
                      [TG_AVATAR_ITEM, 0, 5, 1],
                      [TG_AVATAR_ITEM, 0, 5, 1],

                      [TG_GEM, 0, 100, 1],
                      [TG_GEM, 0, 100, 1],
                      [TG_CHARA_CARD, 0, 10004, 1],
                      [TG_CHARA_CARD, 0, 10004, 1],
                      [TG_CHARA_CARD, 0, 10005, 1],
                      [TG_CHARA_CARD, 0, 10005, 1],
                      [TG_AVATAR_ITEM, 0, 1, 1],
                      [TG_AVATAR_ITEM, 0, 1, 1],
                      [TG_AVATAR_ITEM, 0, 6, 1],
                      [TG_AVATAR_ITEM, 0, 6, 1],
                      [TG_AVATAR_ITEM, 0, 11, 1],
                      [TG_AVATAR_ITEM, 0, 11, 1],
                      [TG_AVATAR_ITEM, 0, 14, 1],
                      [TG_AVATAR_ITEM, 0, 14, 1],

                      [TG_GEM, 0, 200, 1],
                      [TG_CHARA_CARD, 0, 10006, 1],
                      [TG_CHARA_CARD, 0, 10007, 1],
                      [TG_CHARA_CARD, 0, 10008, 1],
                      [TG_AVATAR_ITEM, 0, 2, 1],
                      [TG_AVATAR_ITEM, 0, 4, 1],
                      [TG_AVATAR_ITEM, 0, 9, 1],
                      [TG_AVATAR_ITEM, 0, 17, 1],

                      ##レイドアイテム用にテーブルを追加(β型渦探知機 I)

                      [TG_GEM, 0, 50, 1],
                      [TG_GEM, 0, 50, 1],
                      [TG_GEM, 0, 50, 1],
                      [TG_CHARA_CARD, 0, 10001, 1],
                      [TG_CHARA_CARD, 0, 10001, 1],
                      [TG_CHARA_CARD, 0, 10001, 1],
                      [TG_CHARA_CARD, 0, 10002, 1],
                      [TG_CHARA_CARD, 0, 10002, 1],
                      [TG_CHARA_CARD, 0, 10002, 1],
                      [TG_CHARA_CARD, 0, 10003, 1],
                      [TG_CHARA_CARD, 0, 10003, 1],
                      [TG_CHARA_CARD, 0, 10003, 1],
                      [TG_AVATAR_ITEM, 0, 5, 1],
                      [TG_AVATAR_ITEM, 0, 5, 1],
                      [TG_AVATAR_ITEM, 0, 5, 1],

                      [TG_GEM, 0, 100, 1],
                      [TG_GEM, 0, 100, 1],
                      [TG_CHARA_CARD, 0, 10004, 1],
                      [TG_CHARA_CARD, 0, 10004, 1],
                      [TG_CHARA_CARD, 0, 10005, 1],
                      [TG_CHARA_CARD, 0, 10005, 1],
                      [TG_AVATAR_ITEM, 0, 1, 1],
                      [TG_AVATAR_ITEM, 0, 1, 1],
                      [TG_AVATAR_ITEM, 0, 6, 1],
                      [TG_AVATAR_ITEM, 0, 6, 1],
                      [TG_AVATAR_ITEM, 0, 11, 1],
                      [TG_AVATAR_ITEM, 0, 11, 1],
                      [TG_AVATAR_ITEM, 0, 14, 1],
                      [TG_AVATAR_ITEM, 0, 14, 1],

                      [TG_GEM, 0, 200, 1],
                      [TG_CHARA_CARD, 0, 10006, 1],
                      [TG_CHARA_CARD, 0, 10007, 1],
                      [TG_CHARA_CARD, 0, 10008, 1],
                      [TG_AVATAR_ITEM, 0, 2, 1],
                      [TG_AVATAR_ITEM, 0, 4, 1],
                      [TG_AVATAR_ITEM, 0, 366, 1],
                      [TG_AVATAR_ITEM, 0, 17, 1],

                      ##2セット目(β型渦探知機 I)

                      [TG_GEM, 0, 50, 1],
                      [TG_GEM, 0, 50, 1],
                      [TG_GEM, 0, 50, 1],
                      [TG_CHARA_CARD, 0, 10001, 1],
                      [TG_CHARA_CARD, 0, 10001, 1],
                      [TG_CHARA_CARD, 0, 10001, 1],
                      [TG_CHARA_CARD, 0, 10002, 1],
                      [TG_CHARA_CARD, 0, 10002, 1],
                      [TG_CHARA_CARD, 0, 10002, 1],
                      [TG_CHARA_CARD, 0, 10003, 1],
                      [TG_CHARA_CARD, 0, 10003, 1],
                      [TG_CHARA_CARD, 0, 10003, 1],
                      [TG_AVATAR_ITEM, 0, 5, 1],
                      [TG_AVATAR_ITEM, 0, 5, 1],
                      [TG_AVATAR_ITEM, 0, 5, 1],

                      [TG_GEM, 0, 100, 1],
                      [TG_GEM, 0, 100, 1],
                      [TG_CHARA_CARD, 0, 10004, 1],
                      [TG_CHARA_CARD, 0, 10004, 1],
                      [TG_CHARA_CARD, 0, 10005, 1],
                      [TG_CHARA_CARD, 0, 10005, 1],
                      [TG_AVATAR_ITEM, 0, 1, 1],
                      [TG_AVATAR_ITEM, 0, 1, 1],
                      [TG_AVATAR_ITEM, 0, 6, 1],
                      [TG_AVATAR_ITEM, 0, 6, 1],
                      [TG_AVATAR_ITEM, 0, 11, 1],
                      [TG_AVATAR_ITEM, 0, 11, 1],
                      [TG_AVATAR_ITEM, 0, 14, 1],
                      [TG_AVATAR_ITEM, 0, 14, 1],

                      [TG_GEM, 0, 200, 1],
                      [TG_CHARA_CARD, 0, 10006, 1],
                      [TG_CHARA_CARD, 0, 10007, 1],
                      [TG_CHARA_CARD, 0, 10008, 1],
                      [TG_AVATAR_ITEM, 0, 2, 1],
                      [TG_AVATAR_ITEM, 0, 4, 1],
                      [TG_AVATAR_ITEM, 0, 9, 1],
                      [TG_AVATAR_ITEM, 0, 366, 1],

                      ##3セット目(β型渦探知機 II)

                      [TG_GEM, 0, 50, 1],
                      [TG_GEM, 0, 50, 1],
                      [TG_GEM, 0, 50, 1],
                      [TG_CHARA_CARD, 0, 10001, 1],
                      [TG_CHARA_CARD, 0, 10001, 1],
                      [TG_CHARA_CARD, 0, 10001, 1],
                      [TG_CHARA_CARD, 0, 10002, 1],
                      [TG_CHARA_CARD, 0, 10002, 1],
                      [TG_CHARA_CARD, 0, 10002, 1],
                      [TG_CHARA_CARD, 0, 10003, 1],
                      [TG_CHARA_CARD, 0, 10003, 1],
                      [TG_CHARA_CARD, 0, 10003, 1],
                      [TG_AVATAR_ITEM, 0, 5, 1],
                      [TG_AVATAR_ITEM, 0, 5, 1],
                      [TG_AVATAR_ITEM, 0, 5, 1],

                      [TG_GEM, 0, 100, 1],
                      [TG_GEM, 0, 100, 1],
                      [TG_CHARA_CARD, 0, 10004, 1],
                      [TG_CHARA_CARD, 0, 10004, 1],
                      [TG_CHARA_CARD, 0, 10005, 1],
                      [TG_CHARA_CARD, 0, 10005, 1],
                      [TG_AVATAR_ITEM, 0, 1, 1],
                      [TG_AVATAR_ITEM, 0, 1, 1],
                      [TG_AVATAR_ITEM, 0, 6, 1],
                      [TG_AVATAR_ITEM, 0, 6, 1],
                      [TG_AVATAR_ITEM, 0, 11, 1],
                      [TG_AVATAR_ITEM, 0, 11, 1],
                      [TG_AVATAR_ITEM, 0, 14, 1],
                      [TG_AVATAR_ITEM, 0, 14, 1],

                      [TG_GEM, 0, 200, 1],
                      [TG_CHARA_CARD, 0, 10006, 1],
                      [TG_CHARA_CARD, 0, 10007, 1],
                      [TG_CHARA_CARD, 0, 10008, 1],
                      [TG_AVATAR_ITEM, 0, 2, 1],
                      [TG_AVATAR_ITEM, 0, 4, 1],
                      [TG_AVATAR_ITEM, 0, 9, 1],
                      [TG_AVATAR_ITEM, 0, 367, 1],

                       #2012クリスマスイベント用のログインボーナス
                       #                      [TG_AVATAR_ITEM, 0, 69, 1],

                       #Unlight5周年記念&2016新春キャンペーン用ログインボーナス
                       #                      [TG_CHARA_CARD, 0, 10006, 1],
                       #                      [TG_CHARA_CARD, 0, 10007, 1],
                       #                      [TG_CHARA_CARD, 0, 10008, 1],
                       #                      [TG_CHARA_CARD, 0, 10009, 1],
                       #                      [TG_CHARA_CARD, 0, 10010, 1],

                       #                      [TG_SLOT_CARD, 0, 5000, 1],
                       #                      [TG_SLOT_CARD, 0, 5009, 1],
                       #                      [TG_SLOT_CARD, 0, 5010, 1],
                       #                      [TG_SLOT_CARD, 0, 5011, 1],
                       #                      [TG_SLOT_CARD, 0, 5012, 1],

                       #                      [TG_AVATAR_ITEM, 0, 3, 1],
                       #                      [TG_AVATAR_ITEM, 0, 4, 1],
                       #                      [TG_AVATAR_ITEM, 0, 12, 1],
                       #                      [TG_AVATAR_ITEM, 0, 29, 1],
                       #                      [TG_AVATAR_ITEM, 0, 50, 1],

                       #                      [TG_AVATAR_ITEM, 0, 9, 1],
                       #                      [TG_AVATAR_ITEM, 0, 9, 1],
                       #                      [TG_AVATAR_ITEM, 0, 9, 1],
                       #                      [TG_AVATAR_ITEM, 0, 9, 1],
                       #                      [TG_AVATAR_ITEM, 0, 9, 1],

                       #                      [TG_AVATAR_ITEM, 0, 366, 1],
                       #                      [TG_AVATAR_ITEM, 0, 367, 1],

                     ]

  # イベント用特別ログインボーナス
  EVENT_LOGIN_BONUS = [TG_AVATAR_ITEM, 0, 2, 1]

  # 2016.6 飢えた悪龍イベント 優遇キャラリスト
  EVENT_LEADERS201606 = [18, 50, 74]

  # 2016.9 万斛の魔物イベント 優遇キャラリスト
  EVENT_LEADERS201609 = [76, 77]
end
