#> ui:misc/dead
#
# 死亡したタイミングで実行
#
# @public

# カラクラの死亡連動
function ui:misc/dead/tmw237/dead

#
tag @s remove ui_unhurtable

# もう一回死亡しないように状態異常リセット
scoreboard players reset @s tds_fire
scoreboard players reset @s tds_cold
scoreboard players reset @s tds_acid
scoreboard players reset @s tds_amethyst
scoreboard players reset @s tds_amethyst_t
scoreboard players set @s tds_hps 9999999

# 始動スコアリセット
scoreboard players set @s ui_dc 0

#
scoreboard players reset @s ui_s_kill_streak

# リスポーンの始動スコア
scoreboard players set @s ui_dc_r 1