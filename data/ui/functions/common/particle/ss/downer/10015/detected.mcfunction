#
execute at @s positioned ^ ^ ^0.6 run particle dust 0.4 1 0.4 2 ~ ~1.5 ~ 0 1 0 0 25 force @a
execute at @s positioned ^ ^ ^0.6 run particle dust 0.4 1 0.4 1 ~ ~2.5 ~ 0.15 2 0.15 0 50 force @a
kill @s
playsound entity.wither.shoot player @a ~ ~ ~ 1 1.6

execute as @e[distance=..2,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10015/damage