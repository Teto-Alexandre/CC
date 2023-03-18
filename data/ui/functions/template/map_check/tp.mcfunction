
execute as @e[tag=map_core] if score @s map_id = $select_map ui_temp at @s run teleport @a ~ ~ ~
execute as @e[tag=map_core] if score @s map_id = $select_map ui_temp run schedule function ui:template/map_check/calc 1s