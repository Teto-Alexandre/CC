execute run tellraw @s [{"text":"System","color":"gray"},{"text":"> ","color":"green"},{"text":"マップを確定します","color":"white"}]
scoreboard players reset $x1 ui_temp
scoreboard players reset $x2 ui_temp
scoreboard players reset $y1 ui_temp
scoreboard players reset $y2 ui_temp
scoreboard players reset $z1 ui_temp
scoreboard players reset $z2 ui_temp
execute as @e[tag=map_size] if score @s map_id = #select_map ui_temp run function ui:tmw/260/use/1.size
execute as @e[tag=map_size] if score @s map_id = #select_map ui_temp run kill @s
execute run summon marker ~ ~ ~ {Tags:["ui_temp_obj","master","map","map_size","map_size_lower","map_unpower"]}
execute run summon marker ~ ~ ~ {Tags:["ui_temp_obj","master","map","map_size","map_size_upper","map_unpower"]}
execute as @e[tag=ui_temp_obj] run scoreboard players operation @s map_id = #select_map ui_temp
execute as @e[tag=ui_temp_obj,tag=map_size_lower] store result entity @s Pos[0] double 1 run scoreboard players get $x1 ui_temp
execute as @e[tag=ui_temp_obj,tag=map_size_lower] store result entity @s Pos[1] double 1 run scoreboard players get $y1 ui_temp
execute as @e[tag=ui_temp_obj,tag=map_size_lower] store result entity @s Pos[2] double 1 run scoreboard players get $z1 ui_temp
execute as @e[tag=ui_temp_obj,tag=map_size_upper] store result entity @s Pos[0] double 1 run scoreboard players get $x2 ui_temp
execute as @e[tag=ui_temp_obj,tag=map_size_upper] store result entity @s Pos[1] double 1 run scoreboard players get $y2 ui_temp
execute as @e[tag=ui_temp_obj,tag=map_size_upper] store result entity @s Pos[2] double 1 run scoreboard players get $z2 ui_temp
execute run tellraw @a [{"score":{"name": "#select_map","objective": "ui_temp"}},{"text":"でマップを確定します"}]
execute run tellraw @a [{"score":{"name": "$x1","objective": "ui_temp"}},{"text":" "},{"score":{"name": "$y1","objective": "ui_temp"}},{"text":" "},{"score":{"name": "$z1","objective": "ui_temp"}},{"text":" "},{"score":{"name": "$x2","objective": "ui_temp"}},{"text":" "},{"score":{"name": "$y2","objective": "ui_temp"}},{"text":" "},{"score":{"name": "$z2","objective": "ui_temp"}},{"text":" "}]
scoreboard players operation $x1 ui_temp += $x2 ui_temp
scoreboard players operation $y1 ui_temp += $y2 ui_temp
scoreboard players operation $y1 ui_temp += $y2 ui_temp
scoreboard players operation $y1 ui_temp += $y2 ui_temp
scoreboard players operation $z1 ui_temp += $z2 ui_temp
scoreboard players operation $x1 ui_temp /= #2 ui_num
scoreboard players operation $y1 ui_temp /= #4 ui_num
scoreboard players operation $z1 ui_temp /= #2 ui_num
execute as @e[tag=map_core] if score @s map_id = #select_map ui_temp store result entity @s Pos[0] double 1 run scoreboard players get $x1 ui_temp
execute as @e[tag=map_core] if score @s map_id = #select_map ui_temp store result entity @s Pos[1] double 1 run scoreboard players get $y1 ui_temp
execute as @e[tag=map_core] if score @s map_id = #select_map ui_temp store result entity @s Pos[2] double 1 run scoreboard players get $z1 ui_temp
execute as @e[tag=map_core] if score @s map_id = #select_map ui_temp at @s run teleport @s ~0.5 ~8.5 ~0.5
execute as @e[tag=ui_temp_obj] at @s run teleport @s ~0.5 ~0.5 ~0.5
execute run tag @e[tag=ui_temp_obj] remove ui_temp_obj
execute if score #select_map ui_temp matches 0 at @e[tag=map_core] run scoreboard players add #select_map ui_temp 1
execute as @e[tag=map_core] if score @s map_id matches 0 at @s run forceload add ~ ~ ~ ~
execute as @e[tag=map] if score @s map_id matches 0 at @e[tag=map_core] run scoreboard players add @s map_id 1
execute run tag @e[tag=ui_temp_obj] remove ui_temp_obj
execute as @e[tag=map_core,tag=map_unpower] run tag @s remove map_unpower
