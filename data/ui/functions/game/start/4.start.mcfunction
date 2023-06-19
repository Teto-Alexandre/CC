# 専用ワールド用の簡易実行関数

# 変数リセット
scoreboard players reset @a ui_tmw237_boost
scoreboard players reset @a ui_tmw237_survive
scoreboard players reset @a ui_tmw237_drain
scoreboard players reset @a ui_tmw237_drained_damage
scoreboard players reset @a ui_tmw237_ink_regen

tag @a[tag=fatal_weapon] remove fatal_weapon
execute if score $module ui_world matches 1 as @a if score @s module matches 2 run tag @s add fatal_weapon
execute as @a run attribute @s generic.movement_speed modifier remove 2a93cf3d-b14d-4538-87cc-5fd0119eac2c
execute if score $module ui_world matches 1 as @a if score @s module matches 17 run attribute @s generic.movement_speed modifier add 2a93cf3d-b14d-4538-87cc-5fd0119eac2c "module17" 0.1 multiply
execute as @a run attribute @s generic.max_health modifier remove 2a93cf3d-b14d-4538-87cc-5fd0119eac2d
execute if score $module ui_world matches 1 as @a if score @s module matches 18 run attribute @s generic.max_health modifier add 2a93cf3d-b14d-4538-87cc-5fd0119eac2d "module18" 0.2 multiply

#
bossbar set ui:tmw237 players @a
tellraw @a ["",{"text":"system>> ","color":"white"},{"text":"Start","color":"gold"}]
gamemode adventure @a[tag=!spectate]
playsound minecraft:entity.wither.spawn player @a ~ ~ ~ 1 1 1

#
kill @e[tag=temp_respawn]
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

    ##
    execute if score $module ui_world matches 1 as @a[tag=!spectate] if score @s module matches 3 if entity @s[scores={ui_team=1}] at @e[tag=temp_respawn,tag=!temp_respawn_blue,sort=random,limit=1] run teleport @s ~ ~ ~
    execute if score $module ui_world matches 1 as @a[tag=!spectate] if score @s module matches 3 if entity @s[scores={ui_team=2}] at @e[tag=temp_respawn,tag=!temp_respawn_red,sort=random,limit=1] run teleport @s ~ ~ ~
    execute if score $module ui_world matches 1 as @a[tag=!spectate] if score @s module matches 3 if entity @s[scores={ui_team=3}] at @e[tag=temp_respawn,tag=!temp_respawn_yellow,sort=random,limit=1] run teleport @s ~ ~ ~
    execute if score $module ui_world matches 1 as @a[tag=!spectate] if score @s module matches 3 if entity @s[scores={ui_team=4}] at @e[tag=temp_respawn,tag=!temp_respawn_green,sort=random,limit=1] run teleport @s ~ ~ ~

# レイドボス
execute if data storage ui:map {mode:"Boss"} if score $map ui_world matches 34 run data merge storage ui:common {input:{Mode:"summon",Var:1}}
execute if data storage ui:map {mode:"Boss"} if score $map ui_world matches 34 positioned -188 30 -175 run function ui:common/entity/
execute if data storage ui:map {mode:"Boss"} if score $map ui_world matches 34 run spreadplayers -188 -175 1 25 under 40 false @a[scores={ui_team=1}]
execute if data storage ui:map {mode:"Boss"} if score $map ui_world matches 34 as @a[scores={ui_team=1}] positioned -188 30 -175 facing entity @s eyes rotated ~180 ~ positioned as @s run teleport @s ~ ~ ~ ~ ~

execute as @a[tag=!spectate] at @s run spawnpoint @s ~ ~ ~

effect clear @a
effect give @a night_vision 1000000 0 true
execute if score $module ui_world matches 1 as @a if score @s module matches 7 run effect clear @s night_vision
effect give @a instant_health 10 10 true
#effect give @a resistance 10 127 false

#
scoreboard players operation $time ui_world = $time.max ui_world
execute store result bossbar ui:tmw237 max run scoreboard players get $time ui_world

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
tag @a add tmw_237_tag_spdec
execute if score $module ui_world matches 1 as @a if score @s module matches 22 run tag @s add tmw_237_tag_spmax
