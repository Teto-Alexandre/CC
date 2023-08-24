#各パーティクルに個別実行
#ID,Teamを利用するパーティクル

## 時間経過
#    scoreboard players add @s ui_is 1
#
## 情報共有
#    scoreboard players operation $type ui_temp = @s ui_gpc
#    scoreboard players operation $is ui_temp = @s ui_is
#    scoreboard players operation $id ui_temp = @s ui_id
#    scoreboard players operation $team ui_temp = @s ui_team
#    execute if score $type ui_temp matches ..-1 as @a if score @s ui_id = $id ui_temp run tag @s add ui_temp_player
#    execute if score $type ui_temp matches ..-10001 as @e[predicate=ui:load_unhurtable] if score @s ui_team = $team ui_temp run tag @s add ui_temp_team

# 時間経過
    scoreboard players add @s ui_is 1

# 情報共有
    scoreboard players operation $type ui_temp = @s ui_gpc
    scoreboard players operation $is ui_temp = @s ui_is
    scoreboard players operation $id ui_temp = @s ui_id

# コンパス2
execute if score $type ui_temp matches -1 run function ui:common/particle/ss/downer/1/core
# パーティクル雷
execute if score $type ui_temp matches -10001 run function ui:common/particle/ss/downer/10001/core
# パーティクル雷2
execute if score $type ui_temp matches -10002 run function ui:common/particle/ss/downer/10002/core
# パーティクル雷3
execute if score $type ui_temp matches -10003 run function ui:common/particle/ss/downer/10003/core
# 炎十字
execute if score $type ui_temp matches -10004 run function ui:common/particle/ss/downer/10004/core
# 火魔法陣
execute if score $type ui_temp matches -10005 run function ui:common/particle/ss/downer/10005/core
# 召喚魔法陣
execute if score $type ui_temp matches -10006 run function ui:common/particle/ss/downer/10006/core
# 氷魔法陣
execute if score $type ui_temp matches -10007 run function ui:common/particle/ss/downer/10007/core
# 大氷魔法陣
execute if score $type ui_temp matches -10008 run function ui:common/particle/ss/downer/10008/core
# 大氷魔法陣の魔法陣
execute if score $type ui_temp matches -10009 run function ui:common/particle/ss/downer/10009/core
# 猛烈な衝撃
execute if score $type ui_temp matches -10010 run function ui:common/particle/ss/downer/10010/core
# 猛烈な衝撃 - 親
execute if score $type ui_temp matches -10011 run function ui:common/particle/ss/downer/10011/core
# 静寂の残響
execute if score $type ui_temp matches -10012 run function ui:common/particle/ss/downer/10012/core
# 連続爆発
execute if score $type ui_temp matches -10013 run function ui:common/particle/ss/downer/10013/core
# サンダーストーム付属
execute if score $type ui_temp matches -10014 run function ui:common/particle/ss/downer/10014/core
# 微風
execute if score $type ui_temp matches -10015 run function ui:common/particle/ss/downer/10015/core
# 風塵
execute if score $type ui_temp matches -10016 run function ui:common/particle/ss/downer/10016/core
# 断空
execute if score $type ui_temp matches -10017 run function ui:common/particle/ss/downer/10017/core
# カスタムモデル落とし
execute if score $type ui_temp matches -10018 run function ui:common/particle/ss/downer/10018/core
# 銃テスト
execute if score $type ui_temp matches -10019 run function ui:common/particle/ss/downer/10019/core
# 斬撃2
execute if score $type ui_temp matches -10020 run function ui:common/particle/ss/downer/10020/core
# 斬撃マルチ
execute if score $type ui_temp matches -10021 run function ui:common/particle/ss/downer/10021/core
# 回転魔法陣
execute if score $type ui_temp matches -10022 run function ui:common/particle/ss/downer/10022/core
# グレートバリア
execute if score $type ui_temp matches -10023 run function ui:common/particle/ss/downer/10023/animate
# 半径８の球
execute if score $type ui_temp matches -10024 run function ui:common/particle/ss/downer/10024/core
# グレートバリア2
execute if score $type ui_temp matches -10025 run function ui:common/particle/ss/downer/10025/animate
# グレートバリア破壊後
execute if score $type ui_temp matches -10026 run function ui:common/particle/ss/downer/10026/core
# ナイスダマ
execute if score $type ui_temp matches -10028 run function ui:common/particle/ss/downer/10028/animate
# ホップソナー
execute if score $type ui_temp matches -10029 run function ui:common/particle/ss/downer/10029/core
# ホップソナー予告
execute if score $type ui_temp matches -10030 run function ui:common/particle/ss/downer/10030/core

# サイズ別円形展開
execute if score $type ui_temp matches -10102 run function ui:common/particle/ss/downer/10102/animate
execute if score $type ui_temp matches -10103 run function ui:common/particle/ss/downer/10103/animate
execute if score $type ui_temp matches -10104 run function ui:common/particle/ss/downer/10104/animate
execute if score $type ui_temp matches -10105 run function ui:common/particle/ss/downer/10105/animate
execute if score $type ui_temp matches -10106 run function ui:common/particle/ss/downer/10106/animate
execute if score $type ui_temp matches -10107 run function ui:common/particle/ss/downer/10107/animate
execute if score $type ui_temp matches -10108 run function ui:common/particle/ss/downer/10108/animate
execute if score $type ui_temp matches -10109 run function ui:common/particle/ss/downer/10109/animate
execute if score $type ui_temp matches -10110 run function ui:common/particle/ss/downer/10110/animate

# 横切り
execute if score $type ui_temp matches -11001 run function ui:common/particle/ss/downer/11001/core

#
#tag @a[tag=ui_temp_player] remove ui_temp_player
#tag @e[tag=ui_temp_team] remove ui_temp_team