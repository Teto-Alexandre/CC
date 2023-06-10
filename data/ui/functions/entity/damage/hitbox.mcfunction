scoreboard players add $temp ui_temp 10000
execute store result score $temp2 ui_temp run data get entity @s Health 10
data merge entity @s {Health:1000.0f}
scoreboard players operation $temp ui_temp -= $temp2 ui_temp