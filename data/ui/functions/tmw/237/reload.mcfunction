#
    scoreboard players operation $ink.s ui_temp *= @s ink_regen
    scoreboard players operation $ink.s ui_temp /= #100 ui_num
    scoreboard players operation $ink.m ui_temp *= @s ink_regen
    scoreboard players operation $ink.m ui_temp /= #100 ui_num

# 空中にいる間はインクロックする
    execute if score @s ui_tmw237_air_ink_lock matches 1.. run scoreboard players set $ink.s ui_temp 0
    execute if score @s ui_tmw237_air_ink_lock matches 1.. run scoreboard players set $ink.m ui_temp 0

# $ink = $ink.max になるまで.lp
    execute if score $cooltime ui_temp matches 0 if entity @s[nbt={active_effects:[{id:"minecraft:darkness"}]}] run scoreboard players operation $ink.s ui_temp /= #3 ui_num
    execute if score $cooltime ui_temp matches 0 if entity @s[nbt={active_effects:[{id:"minecraft:darkness"}]}] run scoreboard players operation $ink.m ui_temp /= #3 ui_num
    execute unless score $module ui_world matches 1 unless score @s ui_tmw237_ink_debit matches ..-1 if score $ishold ui_temp matches ..1 if score $cooltime ui_temp matches 0 if score @s ui_use2 matches 0 unless score $multibullet ui_temp matches 1.. unless entity @s[tag=ui_temp_move] run scoreboard players operation $ink ui_temp += $ink.s ui_temp
    execute if score $module ui_world matches 1 unless score @s module matches 56 unless score @s ui_tmw237_ink_debit matches ..-1 if score $ishold ui_temp matches ..1 if score $cooltime ui_temp matches 0 if score @s ui_use2 matches 0 unless score $multibullet ui_temp matches 1.. unless entity @s[tag=ui_temp_move] run scoreboard players operation $ink ui_temp += $ink.s ui_temp
    execute unless score @s ui_tmw237_ink_debit matches ..-1 if score $ishold ui_temp matches ..1 if score $cooltime ui_temp matches 0 if score @s ui_use2 matches 0 unless score $multibullet ui_temp matches 1.. if entity @s[tag=ui_temp_move] run scoreboard players operation $ink ui_temp += $ink.m ui_temp
    execute if score @s ui_tmw237_ink_debit matches ..-1 if score $ishold ui_temp matches ..1 if score $cooltime ui_temp matches 0 if score @s ui_use2 matches 0 unless score $multibullet ui_temp matches 1.. unless entity @s[tag=ui_temp_move] run scoreboard players operation @s ui_tmw237_ink_debit += $ink.s ui_temp
    execute if score @s ui_tmw237_ink_debit matches ..-1 if score $ishold ui_temp matches ..1 if score $cooltime ui_temp matches 0 if score @s ui_use2 matches 0 unless score $multibullet ui_temp matches 1.. if entity @s[tag=ui_temp_move] run scoreboard players operation @s ui_tmw237_ink_debit += $ink.m ui_temp
    execute if score $multibullet ui_temp matches 1.. if score $cooltime ui_temp matches 0 if score @s ui_use2 matches 0 unless entity @s[tag=ui_temp_move] run scoreboard players operation $ink.r ui_temp = $ink.s ui_temp
    execute if score $multibullet ui_temp matches 1.. if score $cooltime ui_temp matches 0 if score @s ui_use2 matches 0 unless entity @s[tag=ui_temp_move] run scoreboard players operation $ink.r ui_temp /= #2 ui_num
    execute unless score @s ui_tmw237_ink_debit matches ..-1 if score $multibullet ui_temp matches 1.. if score $cooltime ui_temp matches 0 if score @s ui_use2 matches 0 unless entity @s[tag=ui_temp_move] run scoreboard players operation $ink ui_temp += $ink.r ui_temp
    execute if score @s ui_tmw237_ink_debit matches ..-1 if score $multibullet ui_temp matches 1.. if score $cooltime ui_temp matches 0 if score @s ui_use2 matches 0 unless entity @s[tag=ui_temp_move] run scoreboard players operation @s ui_tmw237_ink_debit += $ink.r ui_temp
    execute if score $sptype ui_temp matches 254 if score $sptime ui_temp matches 1.. run function ui:tmw/237/misc/inc
    execute if score $subtype ui_temp matches 254 if score $subtime ui_temp matches 1.. run function ui:tmw/237/misc/inc

    execute if score @s ui_tmw237_ink_regen matches 1.. run function ui:tmw/237/misc/ink_regen

    scoreboard players operation $ink ui_temp < $ink.max ui_temp
    #tellraw @a {"score":{"name":"$ink","objective":"ui_temp"},"color":"gold"}
    #tellraw @a [{"score":{"name":"$ink.temp","objective":"ui_temp"}},{"text":"/"},{"score":{"name":"$ink.max","objective":"ui_temp"}}]

# 変更した
    scoreboard players set $changed ui_temp 1

# エフェクト
    execute if score $team ui_temp matches 1 unless score @s module matches 14 at @s run particle dust 0.5 1 1 0.6 ~ ~1 ~ 0.5 0.5 0.5 0 1 normal
    execute if score $team ui_temp matches 2 unless score @s module matches 14 at @s run particle dust 1 0.5 1 0.6 ~ ~1 ~ 0.5 0.5 0.5 0 1 normal
    execute if score $team ui_temp matches 3 unless score @s module matches 14 at @s run particle dust 1 1 0.5 0.6 ~ ~1 ~ 0.5 0.5 0.5 0 1 normal
    execute if score $team ui_temp matches 4 unless score @s module matches 14 at @s run particle dust 0.5 1 0.5 0.6 ~ ~1 ~ 0.5 0.5 0.5 0 1 normal