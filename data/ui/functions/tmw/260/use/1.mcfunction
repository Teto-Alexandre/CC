#
execute if score $mode ui_temp matches 1 run tellraw @s [{"text":"System","color":"gray"},{"text":"> ","color":"green"},{"text":"新規マップコアを設置しました","color":"white"}]
execute if score $mode ui_temp matches 1 run kill @e[tag=map_core,tag=map_unpower]
execute if score $mode ui_temp matches 1 run tag @e[tag=map_unpower] remove map_unpower
execute if score $mode ui_temp matches 1 as @e[tag=!map_core,tag=map_unpower] if score @s map_id = #select_map map_id run tag @s add map_unpower
execute if score $mode ui_temp matches 1 run summon marker ~ ~ ~ {Tags:["ui_temp_obj","master","map","map_core","map_unpower"]}
execute if score $mode ui_temp matches 1 run scoreboard players set #select_map ui_temp 0
execute if score $mode ui_temp matches 1 as @e[tag=ui_temp_obj] run scoreboard players set @s map_id 0
execute if score $mode ui_temp matches 1 run tag @e[tag=ui_temp_obj] remove ui_temp_obj

execute if score $mode ui_temp matches 2 store result score #select_map ui_temp as @e[tag=map_core,sort=nearest,limit=1] run scoreboard players get @s map_id
execute if score $mode ui_temp matches 2 run kill @e[tag=map_core,tag=map_unpower]
execute if score $mode ui_temp matches 2 run tag @e[tag=map_unpower] remove map_unpower
execute if score $mode ui_temp matches 2 as @e[tag=!map_core,tag=map_unpower] if score @s map_id = #select_map map_id run tag @s add map_unpower
execute if score $mode ui_temp matches 2 run tellraw @s [{"text":"System","color":"gray"},{"text":"> ","color":"green"},{"text":"最寄りマップコアを選択します、マップID:","color":"white"},{"score":{"name": "#select_map","objective": "ui_temp"},"color":"aqua"}]

execute if score $mode ui_temp matches 3 if score #select_map ui_temp matches 0 unless entity @e[tag=map_unpower] run tellraw @s [{"text":"System","color":"gray"},{"text":"> ","color":"green"},{"text":"新規マップコアが存在しません","color":"white"}]
execute if score $mode ui_temp matches 3 as @e[tag=map_core] if score @s map_id = #select_map ui_temp run function ui:tmw/260/use/1_3
