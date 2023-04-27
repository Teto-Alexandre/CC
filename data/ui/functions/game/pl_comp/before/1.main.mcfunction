# 人数有利のチームを起点にそれ以外を強化
scoreboard players operation $count ui_temp = @s pl_comp_buff
scoreboard players set @s pl_comp_buff 0

execute if score $count ui_temp matches 1.. run function ui:game/pl_comp/before/2.lp