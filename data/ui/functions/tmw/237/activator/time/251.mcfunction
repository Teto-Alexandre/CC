# ノヴァ
execute if score $time ui_temp matches 5 run execute if score $team ui_temp matches 1 store result score $paint ui_temp run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 light_blue_wool replace #ui:wools
execute if score $time ui_temp matches 5 run execute if score $team ui_temp matches 2 store result score $paint ui_temp run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 pink_wool replace #ui:wools
execute if score $time ui_temp matches 5 run execute if score $team ui_temp matches 3 store result score $paint ui_temp run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 yellow_wool replace #ui:wools
execute if score $time ui_temp matches 5 run execute if score $team ui_temp matches 4 store result score $paint ui_temp run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 lime_wool replace #ui:wools
execute if score $time ui_temp matches 5 as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_s_paint += $paint ui_temp

execute if score $time ui_temp matches 10 run execute if score $team ui_temp matches 1 store result score $paint ui_temp run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 light_blue_wool replace #ui:wools
execute if score $time ui_temp matches 10 run execute if score $team ui_temp matches 2 store result score $paint ui_temp run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 pink_wool replace #ui:wools
execute if score $time ui_temp matches 10 run execute if score $team ui_temp matches 3 store result score $paint ui_temp run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 yellow_wool replace #ui:wools
execute if score $time ui_temp matches 10 run execute if score $team ui_temp matches 4 store result score $paint ui_temp run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 lime_wool replace #ui:wools
execute if score $time ui_temp matches 10 as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_s_paint += $paint ui_temp

execute if score $time ui_temp matches 15 run execute if score $team ui_temp matches 1 store result score $paint ui_temp run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 light_blue_wool replace #ui:wools
execute if score $time ui_temp matches 15 run execute if score $team ui_temp matches 2 store result score $paint ui_temp run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 pink_wool replace #ui:wools
execute if score $time ui_temp matches 15 run execute if score $team ui_temp matches 3 store result score $paint ui_temp run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 yellow_wool replace #ui:wools
execute if score $time ui_temp matches 15 run execute if score $team ui_temp matches 4 store result score $paint ui_temp run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 lime_wool replace #ui:wools
execute if score $time ui_temp matches 15 as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_s_paint += $paint ui_temp

execute if score $time ui_temp matches 20 run execute if score $team ui_temp matches 1 store result score $paint ui_temp run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 light_blue_wool replace #ui:wools
execute if score $time ui_temp matches 20 run execute if score $team ui_temp matches 2 store result score $paint ui_temp run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 pink_wool replace #ui:wools
execute if score $time ui_temp matches 20 run execute if score $team ui_temp matches 3 store result score $paint ui_temp run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 yellow_wool replace #ui:wools
execute if score $time ui_temp matches 20 run execute if score $team ui_temp matches 4 store result score $paint ui_temp run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 lime_wool replace #ui:wools
execute if score $time ui_temp matches 20 as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_s_paint += $paint ui_temp