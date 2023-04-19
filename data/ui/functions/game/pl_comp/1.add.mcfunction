# 人数有利のチームを起点にそれ以外を強化
scoreboard players operation $count ui_temp = $now_pl ui_temp

execute if score $count ui_temp matches 1.. run function ui:game/pl_comp/2.lp