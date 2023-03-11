tellraw @s [{"color":"gray","text":"system"},{"color":"green","text":"> "},{"color":"gold","text":"ColorCrush"},{"color":"white","text":" が起動しました"}]
tellraw @s [{"color":"gray","text":"system"},{"color":"green","text":"> "},{"color":"white","translate":"Recommend to use resourcepack"}]
tellraw @s [{"color":"gray","text":"system"},{"color":"green","text":"> "},{"text":"  - Made by teto","color":"gold"}]

title @s times 0 20 0

advancement grant @s only ui:main/root

advancement grant @s only ui:main/game/node1
advancement grant @s only ui:main/game/node2

advancement grant @s only ui:main/kill/node1
advancement grant @s only ui:main/kill/node2

advancement grant @s only ui:main/paint/node1
advancement grant @s only ui:main/paint/node2

advancement grant @s only ui:add/root

advancement grant @s only ui:add/assist/node1
advancement grant @s only ui:add/assist/node2

advancement grant @s only ui:add/sub/node1
advancement grant @s only ui:add/sub/node2

advancement grant @s only ui:add/sp/node1
advancement grant @s only ui:add/sp/node2

advancement grant @s only ui:add/kill/node1
advancement grant @s only ui:add/kill/node2

advancement grant @s only ui:add/misc/node1
advancement grant @s only ui:add/misc/node2

scoreboard players set @s ui_st 0
scoreboard players set @s ui_gct -1
scoreboard players set @s ui_bc -1

#プレイヤーidを振る
execute as @s unless entity @s[scores={ui_id=1..}] run function ui:misc/act/make_id