
tellraw @a [{"text":"----- Start -----","color":"gray"}]
tellraw @a [{"text":"System","color":"gray"},{"text":"> ","color":"green"},{"text":"マップID:","color":"white"},{"score":{"name": "$select_map","objective": "ui_temp"},"color":"aqua"}]
execute as @e[tag=map] if score @s map_id = $select_map ui_temp store result score @s ui_calc1 run data get entity @s Pos[0] 10
execute as @e[tag=map] if score @s map_id = $select_map ui_temp store result score @s ui_calc2 run data get entity @s Pos[1] 10
execute as @e[tag=map] if score @s map_id = $select_map ui_temp store result score @s ui_calc3 run data get entity @s Pos[2] 10
execute as @e[tag=map] if score @s map_id = $select_map ui_temp run scoreboard players remove @s ui_calc1 5
execute as @e[tag=map] if score @s map_id = $select_map ui_temp run scoreboard players remove @s ui_calc2 5
execute as @e[tag=map] if score @s map_id = $select_map ui_temp run scoreboard players remove @s ui_calc3 5
execute as @e[tag=map] if score @s map_id = $select_map ui_temp run scoreboard players operation @s ui_calc1 /= #10 ui_num
execute as @e[tag=map] if score @s map_id = $select_map ui_temp run scoreboard players operation @s ui_calc2 /= #10 ui_num
execute as @e[tag=map] if score @s map_id = $select_map ui_temp run scoreboard players operation @s ui_calc3 /= #10 ui_num
execute as @e[tag=map_core] if score @s map_id = $select_map ui_temp run tellraw @a [{"text":"core","color":"gray"},{"text":"> ","color":"green"},{"score":{"name": "@s","objective": "ui_calc1"},"color":"aqua"},{"text":", ","color":"white"},{"score":{"name": "@s","objective": "ui_calc2"},"color":"aqua"},{"text":", ","color":"white"},{"score":{"name": "@s","objective": "ui_calc3"},"color":"aqua"}]
#execute as @e[tag=map_size_upper] if score @s map_id = $select_map ui_temp run tellraw @a [{"text":"size_U","color":"gray"},{"text":"> ","color":"green"},{"score":{"name": "@s","objective": "ui_calc1"},"color":"aqua"},{"text":", ","color":"white"},{"score":{"name": "@s","objective": "ui_calc2"},"color":"aqua"},{"text":", ","color":"white"},{"score":{"name": "@s","objective": "ui_calc3"},"color":"aqua"}]
#execute as @e[tag=map_size_lower] if score @s map_id = $select_map ui_temp run tellraw @a [{"text":"size_D","color":"gray"},{"text":"> ","color":"green"},{"score":{"name": "@s","objective": "ui_calc1"},"color":"aqua"},{"text":", ","color":"white"},{"score":{"name": "@s","objective": "ui_calc2"},"color":"aqua"},{"text":", ","color":"white"},{"score":{"name": "@s","objective": "ui_calc3"},"color":"aqua"}]
#execute as @e[tag=map_respawn_blue] if score @s map_id = $select_map ui_temp run tellraw @a [{"text":"blue","color":"gray"},{"text":"> ","color":"green"},{"score":{"name": "@s","objective": "ui_calc1"},"color":"aqua"},{"text":", ","color":"white"},{"score":{"name": "@s","objective": "ui_calc2"},"color":"aqua"},{"text":", ","color":"white"},{"score":{"name": "@s","objective": "ui_calc3"},"color":"aqua"}]
#execute as @e[tag=map_respawn_red] if score @s map_id = $select_map ui_temp run tellraw @a [{"text":"red","color":"gray"},{"text":"> ","color":"green"},{"score":{"name": "@s","objective": "ui_calc1"},"color":"aqua"},{"text":", ","color":"white"},{"score":{"name": "@s","objective": "ui_calc2"},"color":"aqua"},{"text":", ","color":"white"},{"score":{"name": "@s","objective": "ui_calc3"},"color":"aqua"}]
#execute as @e[tag=map_respawn_green] if score @s map_id = $select_map ui_temp run tellraw @a [{"text":"green","color":"gray"},{"text":"> ","color":"green"},{"score":{"name": "@s","objective": "ui_calc1"},"color":"aqua"},{"text":", ","color":"white"},{"score":{"name": "@s","objective": "ui_calc2"},"color":"aqua"},{"text":", ","color":"white"},{"score":{"name": "@s","objective": "ui_calc3"},"color":"aqua"}]
#execute as @e[tag=map_respawn_yellow] if score @s map_id = $select_map ui_temp run tellraw @a [{"text":"yellow","color":"gray"},{"text":"> ","color":"green"},{"score":{"name": "@s","objective": "ui_calc1"},"color":"aqua"},{"text":", ","color":"white"},{"score":{"name": "@s","objective": "ui_calc2"},"color":"aqua"},{"text":", ","color":"white"},{"score":{"name": "@s","objective": "ui_calc3"},"color":"aqua"}]

execute as @e[tag=map_size_upper] if score @s map_id = $select_map ui_temp run tellraw @a [{"text":"size_U","color":"gray"},{"text":"> ","color":"green"},{"nbt":"Pos","entity":"@s","color":"aqua"}]
execute as @e[tag=map_size_lower] if score @s map_id = $select_map ui_temp run tellraw @a [{"text":"size_D","color":"gray"},{"text":"> ","color":"green"},{"nbt":"Pos","entity":"@s","color":"aqua"}]
execute as @e[tag=map_respawn_blue] if score @s map_id = $select_map ui_temp run tellraw @a [{"text":"blue","color":"gray"},{"text":"> ","color":"green"},{"nbt":"Pos","entity":"@s","color":"aqua"}]
execute as @e[tag=map_respawn_red] if score @s map_id = $select_map ui_temp run tellraw @a [{"text":"red","color":"gray"},{"text":"> ","color":"green"},{"nbt":"Pos","entity":"@s","color":"aqua"}]
execute as @e[tag=map_respawn_green] if score @s map_id = $select_map ui_temp run tellraw @a [{"text":"green","color":"gray"},{"text":"> ","color":"green"},{"nbt":"Pos","entity":"@s","color":"aqua"}]
execute as @e[tag=map_respawn_yellow] if score @s map_id = $select_map ui_temp run tellraw @a [{"text":"yellow","color":"gray"},{"text":"> ","color":"green"},{"nbt":"Pos","entity":"@s","color":"aqua"}]

execute as @e[tag=map_core,tag=!4teams] if score @s map_id = $select_map ui_temp run tellraw @a [{"text":"team","color":"gray"},{"text":"> 2","color":"green"}]
execute as @e[tag=map_core,tag=4teams] if score @s map_id = $select_map ui_temp run tellraw @a [{"text":"team","color":"gray"},{"text":"> 4","color":"green"}]
execute as @e[tag=map_core] if score @s map_id = $select_map ui_temp run tellraw @a [{"text":"color","color":"gray"},{"text":"> ","color":"green"},{"score":{"name": "@s","objective": "map_default_color"},"color":"aqua"}]
tellraw @a [{"text":"----- Stop -----","color":"gray"}]

execute as @e[tag=map] if score @s map_id = $select_map ui_temp store result score $temp ui_temp run kill @s
tellraw @a [{"text":"キルしました: "},{"score":{"name": "$temp","objective": "ui_temp"}}]

scoreboard players add $select_map ui_temp 1
schedule function ui:template/map_check/tp 1s
