# 専用ワールド用の簡易実行関数

# 変数リセット
scoreboard players reset @s ui_tmw237_boost
scoreboard players reset @s ui_tmw237_survive
scoreboard players reset @s ui_tmw237_ink_regen

#
bossbar set minecraft:time players @a
tellraw @a ["",{"text":"system>> ","color":"white"},{"text":"Start","color":"gold"}]
gamemode adventure @a[tag=!spectate]
playsound minecraft:entity.wither.spawn player @a ~ ~ ~ 1 1 1

#
execute if data storage ui:map map.blue run summon marker ~ ~ ~ {Tags:["temp_respawn","temp_respawn_blue"]}
execute if data storage ui:map map.red run summon marker ~ ~ ~ {Tags:["temp_respawn","temp_respawn_red"]}
execute if data storage ui:map map.yellow run summon marker ~ ~ ~ {Tags:["temp_respawn","temp_respawn_yellow"]}
execute if data storage ui:map map.green run summon marker ~ ~ ~ {Tags:["temp_respawn","temp_respawn_green"]}

#
execute if data storage ui:map map.blue run data modify entity @e[tag=temp_respawn_blue,limit=1] Pos set from storage ui:map map.blue
execute if data storage ui:map map.red run data modify entity @e[tag=temp_respawn_red,limit=1] Pos set from storage ui:map map.red
execute if data storage ui:map map.yellow run data modify entity @e[tag=temp_respawn_yellow,limit=1] Pos set from storage ui:map map.yellow
execute if data storage ui:map map.green run data modify entity @e[tag=temp_respawn_green,limit=1] Pos set from storage ui:map map.green

#
execute as @e[tag=temp_respawn_blue] positioned as @s as @a[scores={ui_team=1},tag=!spectate] run teleport @s ~ ~ ~
execute as @e[tag=temp_respawn_red] positioned as @s as @a[scores={ui_team=2},tag=!spectate] run teleport @s ~ ~ ~
execute as @e[tag=temp_respawn_yellow] positioned as @s as @a[scores={ui_team=3},tag=!spectate] run teleport @s ~ ~ ~
execute as @e[tag=temp_respawn_green] positioned as @s as @a[scores={ui_team=4},tag=!spectate] run teleport @s ~ ~ ~
execute as @e[tag=temp_respawn_blue] positioned as @s as @a[scores={ui_team=1},tag=!spectate] run spawnpoint @s ~ ~ ~
execute as @e[tag=temp_respawn_red] positioned as @s as @a[scores={ui_team=2},tag=!spectate] run spawnpoint @s ~ ~ ~
execute as @e[tag=temp_respawn_yellow] positioned as @s as @a[scores={ui_team=3},tag=!spectate] run spawnpoint @s ~ ~ ~
execute as @e[tag=temp_respawn_green] positioned as @s as @a[scores={ui_team=4},tag=!spectate] run spawnpoint @s ~ ~ ~

#
kill @e[tag=temp_respawn]

effect clear @a
effect give @a night_vision 1000000 0 true
effect give @a instant_health 10 10 true
effect give @a resistance 10 127 false

#
scoreboard players operation $time ui_world = $time.max ui_world
execute store result bossbar minecraft:time max run scoreboard players get $time ui_world

#
scoreboard players set @a ui_paint 0

#
function ui:game/start/scoreboard_reset

#
scoreboard objectives setdisplay list ui_s_kill
#scoreboard objectives setdisplay sidebar ui_s_paint

#
tag @a add tmw_237_readtag
tag @a add tmw_237_tag_inkfill
tag @s add tmw_237_tag_spdec
