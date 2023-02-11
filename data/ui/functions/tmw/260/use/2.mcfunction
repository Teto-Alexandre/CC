#
execute if score $mode ui_temp matches 1 align xyz positioned ~0.5 ~-0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["ui_temp_obj","master","map","map_size","map_unpower"]}
execute if score $mode ui_temp matches 1 align xyz positioned ~0.5 ~-0.5 ~0.5 unless entity @e[distance=0.1..3,tag=map_size] run tellraw @s [{"text":"System","color":"gray"},{"text":"> ","color":"green"},{"text":"マップ範囲を設置します","color":"white"}]
execute if score $mode ui_temp matches 1 align xyz positioned ~0.5 ~-0.5 ~0.5 if entity @e[distance=0.1..3,tag=map_size] run tellraw @s [{"text":"System","color":"gray"},{"text":"> ","color":"green"},{"text":"マップ範囲を削除します","color":"white"}]
execute if score $mode ui_temp matches 1 align xyz positioned ~0.5 ~-0.5 ~0.5 if entity @e[distance=0.1..3,tag=map_size] run kill @e[tag=map_size,sort=nearest,limit=2]
execute if score $mode ui_temp matches 1 as @e[tag=ui_temp_obj] run scoreboard players operation @s map_id = #select_map ui_temp
execute if score $mode ui_temp matches 1 run tag @e[tag=ui_temp_obj] remove ui_temp_obj

execute if score $mode ui_temp matches 2 run tellraw @s [{"text":"System","color":"gray"},{"text":"> ","color":"green"},{"text":"リスポーン位置を設定します","color":"white"}]
execute if score $mode ui_temp matches 2 align xyz positioned ~0.5 ~-0.5 ~0.5 if block ~ ~ ~ light_blue_stained_glass as @e[tag=map_respawn_blue] if score @s map_id = #select_map ui_temp run kill @s
execute if score $mode ui_temp matches 2 align xyz positioned ~0.5 ~-0.5 ~0.5 if block ~ ~ ~ light_blue_stained_glass run summon marker ~ ~1 ~ {Tags:["ui_temp_obj","master","map","map_respawn_blue","map_unpower"]}
execute if score $mode ui_temp matches 2 align xyz positioned ~0.5 ~-0.5 ~0.5 if block ~ ~ ~ pink_stained_glass as @e[tag=map_respawn_red] if score @s map_id = #select_map ui_temp run kill @s
execute if score $mode ui_temp matches 2 align xyz positioned ~0.5 ~-0.5 ~0.5 if block ~ ~ ~ pink_stained_glass run summon marker ~ ~1 ~ {Tags:["ui_temp_obj","master","map","map_respawn_red","map_unpower"]}
execute if score $mode ui_temp matches 2 align xyz positioned ~0.5 ~-0.5 ~0.5 if block ~ ~ ~ yellow_stained_glass as @e[tag=map_respawn_yellow] if score @s map_id = #select_map ui_temp run kill @s
execute if score $mode ui_temp matches 2 align xyz positioned ~0.5 ~-0.5 ~0.5 if block ~ ~ ~ yellow_stained_glass run summon marker ~ ~1 ~ {Tags:["ui_temp_obj","master","map","map_respawn_yellow","map_unpower"]}
execute if score $mode ui_temp matches 2 align xyz positioned ~0.5 ~-0.5 ~0.5 if block ~ ~ ~ lime_stained_glass as @e[tag=map_respawn_lime] if score @s map_id = #select_map ui_temp run kill @s
execute if score $mode ui_temp matches 2 align xyz positioned ~0.5 ~-0.5 ~0.5 if block ~ ~ ~ lime_stained_glass run summon marker ~ ~1 ~ {Tags:["ui_temp_obj","master","map","map_respawn_lime","map_unpower"]}
execute if score $mode ui_temp matches 2 as @e[tag=ui_temp_obj] run scoreboard players operation @s map_id = #select_map ui_temp
execute if score $mode ui_temp matches 2 run tag @e[tag=ui_temp_obj] remove ui_temp_obj
