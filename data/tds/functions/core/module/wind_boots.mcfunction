execute store result score $yposition1 ui_temp run data get entity @s Pos[1]
execute store result score $yposition2 ui_temp run data get entity @e[tag=tds_victim_temp,limit=1] Pos[1]

scoreboard players operation $yposition1 ui_temp -= $yposition2 ui_temp

execute if score $yposition1 ui_temp matches -1..1 run scoreboard players set $yposition1 ui_temp 0
scoreboard players operation $yposition1 ui_temp *= #3 ui_num
scoreboard players add $yposition1 ui_temp 100
execute if score $yposition1 ui_temp matches 151.. run scoreboard players set $yposition1 ui_temp 150

scoreboard players operation $Damage tds_dmg *= $yposition1 ui_temp
scoreboard players operation $Damage tds_dmg /= #100 ui_num

scoreboard players reset $yposition1 ui_temp
scoreboard players reset $yposition2 ui_temp