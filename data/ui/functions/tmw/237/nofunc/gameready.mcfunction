# 専用ワールド用の簡易実行関数

#
tellraw @a ["",{"text":"system>> ","color":"white"},{"text":"5秒後に開始します・・・","color":"gold"}]
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 0.5 1
effect give @a resistance 10 127 true
execute as @a if score @s ui_rst matches 1.. run scoreboard players set @s ui_rst 1
execute as @e[tag=map_core] if score @s map_id = $map ui_world at @s run teleport @a ~ ~ ~
gamemode spectator @a

# ダメテス殺し
kill @e[tag=damage_tester]

#

schedule function ui:tmw/237/nofunc/gametp 1s
