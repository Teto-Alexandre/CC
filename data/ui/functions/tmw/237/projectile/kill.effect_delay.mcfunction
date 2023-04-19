scoreboard players remove @s ui_is 1

scoreboard players operation $team ui_temp = @s ui_team

execute if score $team ui_temp matches 1 run particle dust 0.5 1 1 2 ~ ~0.3 ~ 0.1 0.1 0.1 0 1 force
execute if score $team ui_temp matches 1 run particle block light_blue_concrete ~ ~0.3 ~ 0.1 0.1 0.1 0 1 force
execute if score $team ui_temp matches 2 run particle dust 1 0.5 1 2 ~ ~0.3 ~ 0.1 0.1 0.1 0 1 force
execute if score $team ui_temp matches 2 run particle block pink_concrete ~ ~0.3 ~ 0.1 0.1 0.1 0 1 force
execute if score $team ui_temp matches 3 run particle dust 1 1 0.5 2 ~ ~0.3 ~ 0.1 0.1 0.1 0 1 force
execute if score $team ui_temp matches 3 run particle block yellow_concrete ~ ~0.3 ~ 0.1 0.1 0.1 0 1 force
execute if score $team ui_temp matches 4 run particle dust 0.5 1 0.5 2 ~ ~0.3 ~ 0.1 0.1 0.1 0 1 force
execute if score $team ui_temp matches 4 run particle block lime_concrete ~ ~0.3 ~ 0.1 0.1 0.1 0 1 force