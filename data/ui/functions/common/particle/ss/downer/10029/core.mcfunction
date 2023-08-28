#
execute if score $is ui_temp matches 1 run teleport @s ^ ^ ^1
execute at @s run teleport @s ^ ^ ^0.3
execute at @s unless block ~ ~ ~ #ui:nocol run function ui:common/particle/ss/downer/10029/inblock
scoreboard players set $count ui_temp 30
execute at @s if block ~ ~-0.1 ~ #ui:nocol run function ui:common/particle/ss/downer/10018/inair
execute if entity @e[distance=..1,predicate=ui:load_unhurtable,tag=!ui_temp_team] run function ui:common/particle/ss/downer/10029/hit

#
execute if score $team ui_temp matches 1 at @s run function ui:common/particle/ss/downer/10029/1
execute if score $team ui_temp matches 2 at @s run function ui:common/particle/ss/downer/10029/2
execute if score $team ui_temp matches 3 at @s run function ui:common/particle/ss/downer/10029/3
execute if score $team ui_temp matches 4 at @s run function ui:common/particle/ss/downer/10029/4

#
#execute if score $is ui_temp matches 70.. run kill @s
execute if score $is ui_temp matches 20.. run kill @s