tag @s add ui_temp_this

execute as @e[tag=ui_proj,tag=tmw_237,distance=..9] if score @s ui_team = @p[tag=ui_temp_this] ui_team run tag @s add ui_temp_non_vacuum

scoreboard players set $drain.add ui_temp 0

execute as @e[distance=..9,tag=!ui_temp_non_vacuum,tag=ui_proj,tag=tmw_237] run function ui:tmw/237/activator/time/464/marker.1
execute positioned ^ ^ ^4 run tag @e[tag=ui_temp_marker_proj,distance=..4] add ui_temp_target_proj
execute as @e[tag=ui_temp_target_proj] run function ui:tmw/237/activator/time/464/drain.1

execute if score $drain.add ui_temp matches 1.. run scoreboard players operation @s ui_tmw237_drained_damage += $drain.add ui_temp

tag @s remove ui_temp_this
tag @e[tag=ui_proj,tag=tmw_237,tag=ui_temp_non_vacuum] remove ui_temp_non_vacuum
kill @e[tag=ui_temp_marker_proj]