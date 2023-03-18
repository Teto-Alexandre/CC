#
execute if score $mode ui_temp matches 1 run tellraw @s [{"text":"System","color":"gray"},{"text":"> ","color":"green"},{"text":"新規マップコアを設置しました","color":"white"}]
execute if score $mode ui_temp matches 1 run kill @e[tag=map_core,tag=map_unpower]
execute if score $mode ui_temp matches 1 run tag @e[tag=map_unpower] remove map_unpower
execute if score $mode ui_temp matches 1 as @e[tag=!map_core,tag=map_unpower] if score @s map_id = #select_map ui_temp run tag @s add map_unpower
execute if score $mode ui_temp matches 1 run summon marker ~ ~ ~ {Tags:["ui_temp_obj","master","map","map_core","map_unpower"]}
execute if score $mode ui_temp matches 1 run scoreboard players set #select_map ui_temp 0
execute if score $mode ui_temp matches 1 as @e[tag=ui_temp_obj] run scoreboard players set @s map_id 0
execute if score $mode ui_temp matches 1 run tag @e[tag=ui_temp_obj] remove ui_temp_obj

execute if score $mode ui_temp matches 2 store result score #select_map ui_temp as @e[tag=map_core,sort=nearest,limit=1] run scoreboard players get @s map_id
execute if score $mode ui_temp matches 2 run kill @e[tag=map_core,tag=map_unpower]
execute if score $mode ui_temp matches 2 run tag @e[tag=map_unpower] remove map_unpower
execute if score $mode ui_temp matches 2 as @e[tag=!map_core] if score @s map_id = #select_map ui_temp run tag @s add map_unpower
execute if score $mode ui_temp matches 2 run tellraw @s [{"text":"----- Start -----","color":"gray"}]
execute if score $mode ui_temp matches 2 run tellraw @s [{"text":"System","color":"gray"},{"text":"> ","color":"green"},{"text":"最寄りマップコアを選択します、マップID:","color":"white"},{"score":{"name": "#select_map","objective": "ui_temp"},"color":"aqua"}]
execute if score $mode ui_temp matches 2 as @e[tag=map] if score @s map_id = #select_map ui_temp store result score @s ui_calc1 run data get entity @s Pos[0] 10
execute if score $mode ui_temp matches 2 as @e[tag=map] if score @s map_id = #select_map ui_temp store result score @s ui_calc2 run data get entity @s Pos[1] 10
execute if score $mode ui_temp matches 2 as @e[tag=map] if score @s map_id = #select_map ui_temp store result score @s ui_calc3 run data get entity @s Pos[2] 10
execute if score $mode ui_temp matches 2 as @e[tag=map] if score @s map_id = #select_map ui_temp run scoreboard players remove @s ui_calc1 5
execute if score $mode ui_temp matches 2 as @e[tag=map] if score @s map_id = #select_map ui_temp run scoreboard players remove @s ui_calc2 5
execute if score $mode ui_temp matches 2 as @e[tag=map] if score @s map_id = #select_map ui_temp run scoreboard players remove @s ui_calc3 5
execute if score $mode ui_temp matches 2 as @e[tag=map] if score @s map_id = #select_map ui_temp run scoreboard players operation @s ui_calc1 /= #10 ui_num
execute if score $mode ui_temp matches 2 as @e[tag=map] if score @s map_id = #select_map ui_temp run scoreboard players operation @s ui_calc2 /= #10 ui_num
execute if score $mode ui_temp matches 2 as @e[tag=map] if score @s map_id = #select_map ui_temp run scoreboard players operation @s ui_calc3 /= #10 ui_num
execute if score $mode ui_temp matches 2 as @e[tag=map_core] if score @s map_id = #select_map ui_temp run tellraw @a [{"text":"core","color":"gray"},{"text":"> ","color":"green"},{"score":{"name": "@s","objective": "ui_calc1"},"color":"aqua"},{"text":", ","color":"white"},{"score":{"name": "@s","objective": "ui_calc2"},"color":"aqua"},{"text":", ","color":"white"},{"score":{"name": "@s","objective": "ui_calc3"},"color":"aqua"}]
execute if score $mode ui_temp matches 2 as @e[tag=map_size_upper] if score @s map_id = #select_map ui_temp run tellraw @a [{"text":"size_U","color":"gray"},{"text":"> ","color":"green"},{"score":{"name": "@s","objective": "ui_calc1"},"color":"aqua"},{"text":", ","color":"white"},{"score":{"name": "@s","objective": "ui_calc2"},"color":"aqua"},{"text":", ","color":"white"},{"score":{"name": "@s","objective": "ui_calc3"},"color":"aqua"}]
execute if score $mode ui_temp matches 2 as @e[tag=map_size_lower] if score @s map_id = #select_map ui_temp run tellraw @a [{"text":"size_D","color":"gray"},{"text":"> ","color":"green"},{"score":{"name": "@s","objective": "ui_calc1"},"color":"aqua"},{"text":", ","color":"white"},{"score":{"name": "@s","objective": "ui_calc2"},"color":"aqua"},{"text":", ","color":"white"},{"score":{"name": "@s","objective": "ui_calc3"},"color":"aqua"}]
execute if score $mode ui_temp matches 2 as @e[tag=map_respawn_blue] if score @s map_id = #select_map ui_temp run tellraw @a [{"text":"blue","color":"gray"},{"text":"> ","color":"green"},{"score":{"name": "@s","objective": "ui_calc1"},"color":"aqua"},{"text":", ","color":"white"},{"score":{"name": "@s","objective": "ui_calc2"},"color":"aqua"},{"text":", ","color":"white"},{"score":{"name": "@s","objective": "ui_calc3"},"color":"aqua"}]
execute if score $mode ui_temp matches 2 as @e[tag=map_respawn_red] if score @s map_id = #select_map ui_temp run tellraw @a [{"text":"red","color":"gray"},{"text":"> ","color":"green"},{"score":{"name": "@s","objective": "ui_calc1"},"color":"aqua"},{"text":", ","color":"white"},{"score":{"name": "@s","objective": "ui_calc2"},"color":"aqua"},{"text":", ","color":"white"},{"score":{"name": "@s","objective": "ui_calc3"},"color":"aqua"}]
execute if score $mode ui_temp matches 2 as @e[tag=map_respawn_green] if score @s map_id = #select_map ui_temp run tellraw @a [{"text":"green","color":"gray"},{"text":"> ","color":"green"},{"score":{"name": "@s","objective": "ui_calc1"},"color":"aqua"},{"text":", ","color":"white"},{"score":{"name": "@s","objective": "ui_calc2"},"color":"aqua"},{"text":", ","color":"white"},{"score":{"name": "@s","objective": "ui_calc3"},"color":"aqua"}]
execute if score $mode ui_temp matches 2 as @e[tag=map_respawn_yellow] if score @s map_id = #select_map ui_temp run tellraw @a [{"text":"yellow","color":"gray"},{"text":"> ","color":"green"},{"score":{"name": "@s","objective": "ui_calc1"},"color":"aqua"},{"text":", ","color":"white"},{"score":{"name": "@s","objective": "ui_calc2"},"color":"aqua"},{"text":", ","color":"white"},{"score":{"name": "@s","objective": "ui_calc3"},"color":"aqua"}]
execute if score $mode ui_temp matches 2 as @e[tag=map_core,tag=!4teams] if score @s map_id = #select_map ui_temp run tellraw @a [{"text":"team","color":"gray"},{"text":"> 2","color":"green"}]
execute if score $mode ui_temp matches 2 as @e[tag=map_core,tag=4teams] if score @s map_id = #select_map ui_temp run tellraw @a [{"text":"team","color":"gray"},{"text":"> 4","color":"green"}]
execute if score $mode ui_temp matches 2 as @e[tag=map_core] if score @s map_id = #select_map ui_temp run tellraw @a [{"text":"color","color":"gray"},{"text":"> ","color":"green"},{"score":{"name": "@s","objective": "map_default_color"},"color":"aqua"}]
execute if score $mode ui_temp matches 2 run tellraw @s [{"text":"----- Stop -----","color":"gray"}]

execute if score $mode ui_temp matches 3 if score #select_map ui_temp matches 0 unless entity @e[tag=map_unpower] run tellraw @s [{"text":"System","color":"gray"},{"text":"> ","color":"green"},{"text":"新規マップコアが存在しません","color":"white"}]
execute if score $mode ui_temp matches 3 as @e[tag=map_core] if score @s map_id = #select_map ui_temp run function ui:tmw/260/use/1_3
