#
execute as @e[tag=map_size_lower] if score @s map_id = $map ui_world run function ui:template/wool_count/function
