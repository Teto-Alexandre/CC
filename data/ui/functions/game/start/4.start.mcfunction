# 専用ワールド用の簡易実行関数

#
tag @a remove tmw_237_sp_survive

#
bossbar set minecraft:time players @a
tellraw @a ["",{"text":"system>> ","color":"white"},{"text":"Start","color":"gold"}]
gamemode adventure @a[tag=!spectate]
playsound minecraft:entity.wither.spawn player @a ~ ~ ~ 1 1 1

#
execute if data storage ui:map blue run summon marker ~ ~ ~ {Tags:["temp_respawn","temp_respawn_blue"]}
execute if data storage ui:map red run summon marker ~ ~ ~ {Tags:["temp_respawn","temp_respawn_red"]}
execute if data storage ui:map yellow run summon marker ~ ~ ~ {Tags:["temp_respawn","temp_respawn_yellow"]}
execute if data storage ui:map green run summon marker ~ ~ ~ {Tags:["temp_respawn","temp_respawn_green"]}

#
execute if data storage ui:map blue run data modify entity @e[tag=temp_respawn_blue,limit=1] Pos set from storage ui:map blue
execute if data storage ui:map red run data modify entity @e[tag=temp_respawn_red,limit=1] Pos set from storage ui:map red
execute if data storage ui:map yellow run data modify entity @e[tag=temp_respawn_yellow,limit=1] Pos set from storage ui:map yellow
execute if data storage ui:map green run data modify entity @e[tag=temp_respawn_green,limit=1] Pos set from storage ui:map green

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
scoreboard players set $time ui_world 3000
execute store result bossbar minecraft:time max run scoreboard players get $time ui_world

#
scoreboard players set @a ui_paint 0

#
scoreboard objectives remove ui_s_kill
scoreboard objectives add ui_s_kill minecraft.custom:minecraft.player_kills
scoreboard players set @a ui_s_kill 0
scoreboard objectives remove ui_s_death
scoreboard objectives add ui_s_death deathCount
scoreboard players set @a ui_s_death 0
scoreboard objectives remove ui_s_assist
scoreboard objectives add ui_s_assist dummy
scoreboard players set @a ui_s_assist 0
scoreboard objectives remove ui_s_paint
scoreboard objectives add ui_s_paint dummy
scoreboard players set @a ui_s_paint 0
scoreboard objectives remove ui_s_q
scoreboard objectives remove ui_s_f
scoreboard objectives add ui_s_q dummy
scoreboard objectives add ui_s_f dummy
scoreboard players set @a ui_s_q 0
scoreboard players set @a ui_s_f 0
scoreboard objectives remove ui_s_kill_dist
scoreboard objectives add ui_s_kill_dist dummy
scoreboard players set @a ui_s_kill_dist 0

#
#scoreboard objectives setdisplay sidebar ui_s_kill
#scoreboard objectives setdisplay sidebar ui_s_paint

#
tag @a add tmw_237_readtag
tag @a add tmw_237_tag_inkfill