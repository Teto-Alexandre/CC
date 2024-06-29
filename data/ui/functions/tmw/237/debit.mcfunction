# $ink = $ink.max になるまで.lp
    execute if score @s ui_tmw237_ink_debit matches ..-1 run scoreboard players remove $ink ui_temp 5
    execute if score @s ui_tmw237_ink_debit matches ..-1 run scoreboard players add @s ui_tmw237_ink_debit 5
    execute if score @s ui_tmw237_ink_debit matches ..-1000 run scoreboard players remove $ink ui_temp 10
    execute if score @s ui_tmw237_ink_debit matches ..-1000 run scoreboard players add @s ui_tmw237_ink_debit 10

    scoreboard players operation $ink ui_temp < $ink.max ui_temp
    scoreboard players operation @s ui_tmw237_ink_debit < #0 ui_num
    #tellraw @a {"score":{"name":"$ink","objective":"ui_temp"},"color":"gold"}
    #tellraw @a [{"score":{"name":"$ink.temp","objective":"ui_temp"}},{"text":"/"},{"score":{"name":"$ink.max","objective":"ui_temp"}}]

# 変更した
    scoreboard players set $changed ui_temp 1

# エフェクト
    #execute if score $team ui_temp matches 1 at @s run particle dust 0.5 1 1 0.6 ~ ~1 ~ 0.5 0.5 0.5 0 1 normal
    #execute if score $team ui_temp matches 2 at @s run particle dust 1 0.5 1 0.6 ~ ~1 ~ 0.5 0.5 0.5 0 1 normal
    #execute if score $team ui_temp matches 3 at @s run particle dust 1 1 0.5 0.6 ~ ~1 ~ 0.5 0.5 0.5 0 1 normal
    #execute if score $team ui_temp matches 4 at @s run particle dust 0.5 1 0.5 0.6 ~ ~1 ~ 0.5 0.5 0.5 0 1 normal