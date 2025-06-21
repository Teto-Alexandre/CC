# キル数と塗り数の表示

#
gamemode spectator @a
clear @a
tellraw @a ["",{"text":"system>> ","color":"white"},{"text":"終了！","color":"gold"}]
playsound minecraft:entity.wither.death master @a ~ ~ ~ 0.5 1 0.5
bossbar set ui:tmw237 players -
kill @e[tag=ui_17_pink]
kill @e[tag=ui_17_blue]
kill @e[tag=ui_19_1]
kill @e[tag=ui_19_4_they]
scoreboard players set $time ui_world -1
kill @e[tag=damage_tester]