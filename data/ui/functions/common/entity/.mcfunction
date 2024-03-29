#> ui:common/entity/
#
# 汎用エンティティを作成
#
# @input storage ui:common input
#   Mode: String
#       作動モードを入力
#   Var : int
#       数値がいるときに使う
#
# @output $Return ui_temp - ここに結果を出力
#
# @public

# 初期化
    scoreboard players set $Return ui_temp 0
    scoreboard players set $result ui_temp 0

# 分岐
    execute if data storage ui:common input{Mode:"summon"} run function ui:common/entity/summon/main

# 入力
    scoreboard players operation $Return ui_temp = $result ui_temp

# データ削除
    data remove storage ui:common input
    data remove storage ui:common temp