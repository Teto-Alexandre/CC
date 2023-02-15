# スーパースターの時足元を塗りつぶす
execute if score $team ui_temp matches 1 store result score $paint ui_temp run fill ~ ~-0.3 ~ ~ ~-0.3 ~ light_blue_wool replace #ui:wools
execute if score $team ui_temp matches 2 store result score $paint ui_temp run fill ~ ~-0.3 ~ ~ ~-0.3 ~ pink_wool replace #ui:wools
execute if score $team ui_temp matches 3 store result score $paint ui_temp run fill ~ ~-0.3 ~ ~ ~-0.3 ~ yellow_wool replace #ui:wools
execute if score $team ui_temp matches 4 store result score $paint ui_temp run fill ~ ~-0.3 ~ ~ ~-0.3 ~ lime_wool replace #ui:wools
execute as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_s_paint += $paint ui_temp
