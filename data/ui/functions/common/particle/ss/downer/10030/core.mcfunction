#
execute if score $is ui_temp matches 1 run teleport @s ^ ^ ^1
execute at @s run teleport @s ^ ^ ^0.6
execute at @s unless block ~ ~ ~ #ui:nocol run function ui:common/particle/ss/downer/10030/inblock
scoreboard players set $count ui_temp 30
execute at @s if block ~ ~-0.1 ~ #ui:nocol run function ui:common/particle/ss/downer/10018/inair
#execute if entity @e[distance=..1,predicate=ui:load_unhurtable,tag=!ui_temp_team] run function ui:common/particle/ss/downer/10030/hit

#
function ui:common/particle/ss/downer/10030/1

#
#execute if score $is ui_temp matches 35.. run kill @s
execute if score $is ui_temp matches 15.. run kill @s