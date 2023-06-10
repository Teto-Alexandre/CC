scoreboard players operation $obj_id ui_temp = @s ui_obj_id

execute if score $input ui_temp matches 1 run function ui:common/entity/init/1

execute as @e[tag=entity.unpower] run function ui:common/entity/init/temp_unpower