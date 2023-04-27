# 人数有利のチームを起点にそれ以外を強化
scoreboard players operation $count ui_temp = $now_pl ui_temp

execute if score @s ui_team matches 1 run scoreboard players operation $count ui_temp /= $o_blue_pl ui_temp
execute if score @s ui_team matches 2 run scoreboard players operation $count ui_temp /= $o_red_pl ui_temp
execute if score @s ui_team matches 3 run scoreboard players operation $count ui_temp /= $o_yellow_pl ui_temp
execute if score @s ui_team matches 4 run scoreboard players operation $count ui_temp /= $o_green_pl ui_temp

execute if score $count ui_temp matches 1.. run function ui:game/pl_comp/2.lp