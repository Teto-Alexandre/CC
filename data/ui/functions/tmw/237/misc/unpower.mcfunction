scoreboard players operation @e[tag=ui_temp_unpower] ui_id = @s ui_id
scoreboard players operation @e[tag=ui_temp_unpower] ui_team = @s ui_team
execute as @e[tag=ui_temp_unpower] run function ui:tmw/237/misc/unpower.2
tag @e[tag=ui_temp_unpower] remove ui_temp_unpower