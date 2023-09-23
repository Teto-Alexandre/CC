execute store result score $rotation_x ui_temp run data get entity @s Rotation.[0]
scoreboard players set $success ui_temp 0
execute at @s if block ~0.5 ~-0.5 ~ iron_block store result entity @s Rotation.[0] float -1 store success score $success ui_temp run scoreboard players get $rotation_x ui_temp
execute at @s if block ~-0.5 ~-0.5 ~ iron_block store result entity @s Rotation.[0] float -1 store success score $success ui_temp run scoreboard players get $rotation_x ui_temp
execute at @s if block ~ ~-0.5 ~0.5 iron_block store result score $rotation_x ui_temp run data get entity @s Rotation.[0] -1
execute at @s if block ~ ~-0.5 ~0.5 iron_block store result entity @s Rotation.[0] float 1 store success score $success ui_temp run scoreboard players operation $rotation_x ui_temp -= #180 ui_num
execute at @s if block ~ ~-0.5 ~-0.5 iron_block store result score $rotation_x ui_temp run data get entity @s Rotation.[0] -1
execute at @s if block ~ ~-0.5 ~-0.5 iron_block store result entity @s Rotation.[0] float 1 store success score $success ui_temp run scoreboard players operation $rotation_x ui_temp -= #180 ui_num

execute at @s run teleport @s ^ ^ ^0.4