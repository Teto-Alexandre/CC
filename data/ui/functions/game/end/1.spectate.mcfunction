# キル数と塗り数の表示

#
gamemode spectator @a
execute as @a at @s run teleport @s ~ ~10 ~ ~ ~
tellraw @a ["",{"text":"system>> ","color":"white"},{"text":"終了！","color":"gold"}]
playsound minecraft:entity.wither.death master @a ~ ~ ~ 0.5 1 0.5
bossbar set minecraft:time players -
kill @e[tag=ui_17_pink]
kill @e[tag=ui_17_blue]
scoreboard players set $time ui_world -1
kill @e[tag=damage_tester]