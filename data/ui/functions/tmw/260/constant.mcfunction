#
tag @s add ui_temp_this

#
execute as @e[tag=map_core] at @s facing entity @e[tag=ui_temp_this] eyes positioned ^ ^ ^1 facing entity @s feet positioned as @e[tag=ui_temp_this] positioned ^ ^ ^0.5 run particle dust 1 0 0 0.3 ~ ~1.6 ~ 0 0 0 0 1
execute as @e[tag=map_core] at @s run function ui:tmw/260/particle/core
execute as @e[tag=map_size] if score @s map_id = #select_map ui_temp at @s run function ui:tmw/260/particle/box
execute as @e[tag=map_respawn_blue] if score @s map_id = #select_map ui_temp at @s run particle dust 0 1 1 1 ~ ~-0.3 ~ 0.5 0 0.5 0 3 force
execute as @e[tag=map_respawn_red] if score @s map_id = #select_map ui_temp at @s run particle dust 1 0 1 1 ~ ~-0.3 ~ 0.5 0 0.5 0 3 force
execute as @e[tag=map_respawn_yellow] if score @s map_id = #select_map ui_temp at @s run particle dust 1 1 0 1 ~ ~-0.3 ~ 0.5 0 0.5 0 3 force
execute as @e[tag=map_respawn_green] if score @s map_id = #select_map ui_temp at @s run particle dust 0 1 0 1 ~ ~-0.3 ~ 0.5 0 0.5 0 3 force

#
tag @s remove ui_temp_this