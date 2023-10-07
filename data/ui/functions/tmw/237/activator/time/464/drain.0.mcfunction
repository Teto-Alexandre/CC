scoreboard players set $obj_id ui_temp 0
scoreboard players operation $obj_id ui_temp = @s ui_obj_id
execute as @e[distance=0.01..9,tag=!ui_temp_team,predicate=ui:load_unhurtable] if score @s ui_obj_id = $obj_id ui_temp run scoreboard players add $drain.add ui_temp 6
execute as @e[distance=0.01..9,tag=!ui_temp_team,predicate=ui:load_unhurtable] if score @s ui_obj_id = $obj_id ui_temp at @s positioned ~ ~ ~ run playsound item.bundle.insert player @a ~ ~ ~ 1 1 0
execute as @a[distance=0.01..9,tag=!ui_temp_team,predicate=ui:load_unhurtable] if score @s ui_obj_id = $obj_id ui_temp as @a[tag=ui_temp_this] run function ui:tmw/237/misc/store_base_data
execute as @a[distance=0.01..9,tag=!ui_temp_team,predicate=ui:load_unhurtable] if score @s ui_obj_id = $obj_id ui_temp at @s positioned ~ ~ ~ run function ui:tmw/237/activator/time/464/drain.0.2
execute as @a[distance=0.01..9,tag=!ui_temp_team,predicate=ui:load_unhurtable] if score @s ui_obj_id = $obj_id ui_temp as @a[tag=ui_temp_this] run function ui:tmw/237/misc/restore_base_data
execute as @a[distance=0.01..9,tag=!ui_temp_team,predicate=ui:load_unhurtable] if score @s ui_obj_id = $obj_id ui_temp at @s positioned ~ ~ ~ run function ui:tmw/237/activator/time/464/drain.0.3
execute as @e[distance=0.01..9,tag=!ui_temp_team,predicate=ui:load_unhurtable,type=!player] if score @s ui_obj_id = $obj_id ui_temp at @s positioned ~ ~ ~ run scoreboard players remove @s ui_is 30