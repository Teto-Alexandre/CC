# 弾にデータを込める
execute unless score $id ui_temp matches 0 run scoreboard players operation @s ui_id = $id ui_temp
execute unless score $team ui_temp matches 0 run scoreboard players operation @s ui_team = $team ui_temp
execute unless score $obj_id ui_temp matches 0 run scoreboard players operation @s ui_obj_id = $obj_id ui_temp