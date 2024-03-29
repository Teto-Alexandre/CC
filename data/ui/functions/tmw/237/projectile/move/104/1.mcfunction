execute if score @s ui_is matches 1..20 run particle dust 0.5 1 1 1.2 ~ ~ ~ 0 0 0 0 1 force
execute if score @s ui_is matches 21..40 run particle dust 0.5 1 1 1.4 ~ ~ ~ 0 0 0 0 1 force
execute if score @s ui_is matches 41..60 run particle dust 0.5 1 1 1.6 ~ ~ ~ 0 0 0 0 1 force
execute if score @s ui_is matches 61..80 run particle dust 0.5 1 1 1.8 ~ ~ ~ 0 0 0 0 1 force
execute if score @s ui_is matches 81..100 run particle dust 0.5 1 1 2.0 ~ ~ ~ 0 0 0 0 1 force
execute if score @s ui_is matches 101..120 run particle dust 0.5 1 1 2.2 ~ ~ ~ 0 0 0 0 1 force
execute if score @s ui_is matches 121..140 run particle dust 0.5 1 1 2.4 ~ ~ ~ 0 0 0 0 1 force
execute if score @s ui_is matches 141..160 run particle dust 0.5 1 1 2.6 ~ ~ ~ 0 0 0 0 1 force
execute if score @s ui_is matches 161..180 run particle dust 0.5 1 1 2.8 ~ ~ ~ 0 0 0 0 1 force
execute if score @s ui_is matches 181..200 run particle dust 0.5 1 1 3.0 ~ ~ ~ 0 0 0 0 1 force
execute if score @s ui_is matches 201..220 run particle dust 0.5 1 1 3.2 ~ ~ ~ 0 0 0 0 1 force
execute if score @s ui_is matches 221..240 run particle dust 0.5 1 1 3.4 ~ ~ ~ 0 0 0 0 1 force
execute if score @s ui_is matches 241..260 run particle dust 0.5 1 1 3.6 ~ ~ ~ 0 0 0 0 1 force
execute if score @s ui_is matches 261..280 run particle dust 0.5 1 1 3.8 ~ ~ ~ 0 0 0 0 1 force
execute if score @s ui_is matches 281..300 run particle dust 0.5 1 1 4.0 ~ ~ ~ 0 0 0 0 1 force
execute if score @s ui_is matches 301..320 run particle dust 0.5 1 1 4.2 ~ ~ ~ 0 0 0 0 1 force
execute if score @s ui_is matches 321..340 run particle dust 0.5 1 1 4.4 ~ ~ ~ 0 0 0 0 1 force
execute if score @s ui_is matches 341..360 run particle dust 0.5 1 1 4.6 ~ ~ ~ 0 0 0 0 1 force
execute if score @s ui_is matches 361..380 run particle dust 0.5 1 1 4.8 ~ ~ ~ 0 0 0 0 1 force
execute if score @s ui_is matches 381..400 run particle dust 0.5 1 1 5.0 ~ ~ ~ 0 0 0 0 1 force
scoreboard players set $temp ui_temp 0
execute if score @s ui_is matches 101..200 store result score $temp ui_temp run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 light_blue_wool replace #ui:wools
execute if score @s ui_is matches 201..300 store result score $temp ui_temp run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 light_blue_wool replace #ui:wools
execute if score @s ui_is matches 301..400 store result score $temp ui_temp run fill ~-1.5 ~-1.5 ~-1.5 ~1.5 ~1.5 ~1.5 light_blue_wool replace #ui:wools
scoreboard players operation $paint ui_temp = $temp ui_temp
execute store result score $temp ui_temp run fill ~ ~-4 ~ ~ ~ ~ light_blue_wool replace #ui:wools
scoreboard players operation $paint ui_temp += $temp ui_temp