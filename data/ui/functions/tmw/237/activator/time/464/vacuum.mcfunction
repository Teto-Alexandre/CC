execute store result score $time ui_temp run time query gametime
scoreboard players operation $time ui_temp %= #2 ui_num
execute if score $time ui_temp matches 0 anchored eyes positioned ^ ^ ^ run function ui:tmw/237/activator/time/464/part.0
execute if score $time ui_temp matches 1 anchored eyes positioned ^ ^ ^ run function ui:tmw/237/activator/time/464/part.1

execute as @e[predicate=ui:load_unhurtable] if score @s ui_team = $team ui_temp run tag @s add ui_temp_team
execute as @e[tag=tmw_237_sub] if score @s ui_team = $team ui_temp run tag @s add ui_temp_team

scoreboard players set $drain.add ui_temp 0

execute as @e[distance=0.01..9,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/activator/time/464/marker.0
execute as @e[distance=0.01..9,tag=!ui_temp_team,tag=tmw_237_sub] run function ui:tmw/237/activator/time/464/marker.2
execute positioned ^ ^ ^4 run tag @e[tag=ui_temp_marker,distance=..4] add ui_temp_target
execute positioned ^ ^ ^4 run tag @e[tag=ui_temp_marker_sub,distance=..4] add ui_temp_target_sub
execute at @e[tag=ui_temp_target] run particle witch ~ ~1.5 ~ 0 0 0 0 1 normal @s
execute as @e[tag=ui_temp_target] run function ui:tmw/237/activator/time/464/drain.0
execute as @e[tag=ui_temp_target_sub] run function ui:tmw/237/activator/time/464/drain.2

execute if score $drain.add ui_temp matches 1.. run scoreboard players operation @s ui_tmw237_drained_damage += $drain.add ui_temp

tag @e[tag=tmw_237_sub,tag=ui_temp_team] remove ui_temp_team
kill @e[tag=ui_temp_marker]
kill @e[tag=ui_temp_marker_sub]