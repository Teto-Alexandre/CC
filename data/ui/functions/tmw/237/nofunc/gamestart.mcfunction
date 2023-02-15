# 専用ワールド用の簡易実行関数

#
tag @a remove tmw_237_sp_survive

#
bossbar set minecraft:time players @a
tellraw @a ["",{"text":"system>> ","color":"white"},{"text":"Start","color":"gold"}]
gamemode adventure @a
playsound minecraft:entity.wither.spawn player @a ~ ~ ~ 1 1 1
execute as @e[tag=map_respawn_blue] if score @s map_id = $map ui_world positioned as @s as @a[scores={ui_team=1}] run teleport @s ~ ~ ~
execute as @e[tag=map_respawn_red] if score @s map_id = $map ui_world positioned as @s as @a[scores={ui_team=2}] run teleport @s ~ ~ ~
execute as @e[tag=map_respawn_yellow] if score @s map_id = $map ui_world positioned as @s as @a[scores={ui_team=3}] run teleport @s ~ ~ ~
execute as @e[tag=map_respawn_green] if score @s map_id = $map ui_world positioned as @s as @a[scores={ui_team=4}] run teleport @s ~ ~ ~
execute as @e[tag=map_respawn_blue] if score @s map_id = $map ui_world positioned as @s as @a[scores={ui_team=1}] run spawnpoint @s ~ ~ ~
execute as @e[tag=map_respawn_red] if score @s map_id = $map ui_world positioned as @s as @a[scores={ui_team=2}] run spawnpoint @s ~ ~ ~
execute as @e[tag=map_respawn_yellow] if score @s map_id = $map ui_world positioned as @s as @a[scores={ui_team=3}] run spawnpoint @s ~ ~ ~
execute as @e[tag=map_respawn_green] if score @s map_id = $map ui_world positioned as @s as @a[scores={ui_team=4}] run spawnpoint @s ~ ~ ~
effect clear @a
effect give @a night_vision 1000000 0 true

#
scoreboard players set @a ui_paint 0
scoreboard objectives remove ui_kills
scoreboard objectives add ui_kills minecraft.custom:minecraft.player_kills
scoreboard objectives remove ui_s_paint
scoreboard objectives add ui_s_paint dummy
#scoreboard objectives setdisplay sidebar ui_kills
scoreboard objectives setdisplay sidebar ui_s_paint
tag @a add tmw_237_readtag
tag @a add tmw_237_tag_inkfill