scoreboard players set $obj_id ui_temp 0
scoreboard players operation $obj_id ui_temp = @s ui_obj_id
execute as @e[distance=0.01..9,tag=!ui_temp_team,tag=ui_proj,tag=tmw_237] if score @s ui_obj_id = $obj_id ui_temp run function ui:tmw/237/activator/time/464/drain.1.2