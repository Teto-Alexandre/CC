# 専用ワールド用の簡易実行関数

# 変数リセット
scoreboard players reset @a ui_tmw237_boost
scoreboard players reset @a ui_tmw237_survive
scoreboard players reset @a ui_tmw237_drained_damage
scoreboard players reset @a ui_tmw237_ink_regen

tag @a[tag=fatal_weapon] remove fatal_weapon
execute if score $module ui_world matches 1 as @a if score @s module matches 2 run tag @s add fatal_weapon
execute as @a run attribute @s generic.movement_speed modifier remove 2a93cf3d-b14d-4538-87cc-5fd0119eac2c
execute if score $module ui_world matches 1 as @a if score @s module matches 17 run attribute @s generic.movement_speed modifier add 2a93cf3d-b14d-4538-87cc-5fd0119eac2c "module17" 0.01 add
execute as @a run attribute @s generic.max_health modifier remove 2a93cf3d-b14d-4538-87cc-5fd0119eac2d
execute if score $module ui_world matches 1 as @a if score @s module matches 18 run attribute @s generic.max_health modifier add 2a93cf3d-b14d-4538-87cc-5fd0119eac2d "module18" 4 add

#
bossbar set ui:tmw237 players @a
tellraw @a ["",{"text":"system>> ","color":"white"},{"text":"Start","color":"gold"}]
gamemode adventure @a[tag=!spectate]
execute as @a[tag=!spectate] run tp @s @s
playsound minecraft:entity.wither.spawn player @a ~ ~ ~ 1 1 1

#
kill @e[tag=temp_respawn]
execute if data storage ui:map map.blue run summon marker ~ ~ ~ {Tags:["temp_respawn","temp_respawn_blue"]}
execute if data storage ui:map map.red run summon marker ~ ~ ~ {Tags:["temp_respawn","temp_respawn_red"]}
execute if data storage ui:map map.yellow run summon marker ~ ~ ~ {Tags:["temp_respawn","temp_respawn_yellow"]}
execute if data storage ui:map map.green run summon marker ~ ~ ~ {Tags:["temp_respawn","temp_respawn_green"]}

#
data merge storage ui:map {map:{temp:[0.0d,0.0d,0.0d]}}
execute store result score $x1 ui_temp run data get storage ui:map map.blue[0] 10
execute store result score $y1 ui_temp run data get storage ui:map map.blue[1] 10
execute store result score $z1 ui_temp run data get storage ui:map map.blue[2] 10
scoreboard players add $x1 ui_temp 5
scoreboard players add $y1 ui_temp 5
scoreboard players add $z1 ui_temp 5
execute store result storage ui:map map.temp[0] double 0.1 run scoreboard players get $x1 ui_temp
execute store result storage ui:map map.temp[1] double 0.1 run scoreboard players get $y1 ui_temp
execute store result storage ui:map map.temp[2] double 0.1 run scoreboard players get $z1 ui_temp
#execute if data storage ui:map map.blue run tellraw @a [{"text":"MapData[Blue]: "},{"storage":"ui:map","nbt":"map.blue","color": "aqua"},{"text":", TEMP: "},{"storage":"ui:map","nbt":"map.temp","color": "aqua"}]

execute if data storage ui:map map.blue run data modify entity @e[tag=temp_respawn_blue,limit=1] Pos set from storage ui:map map.temp

data merge storage ui:map {map:{temp:[0.0d,0.0d,0.0d]}}
execute store result score $x1 ui_temp run data get storage ui:map map.red[0] 10
execute store result score $y1 ui_temp run data get storage ui:map map.red[1] 10
execute store result score $z1 ui_temp run data get storage ui:map map.red[2] 10
scoreboard players add $x1 ui_temp 5
scoreboard players add $y1 ui_temp 5
scoreboard players add $z1 ui_temp 5
execute store result storage ui:map map.temp[0] double 0.1 run scoreboard players get $x1 ui_temp
execute store result storage ui:map map.temp[1] double 0.1 run scoreboard players get $y1 ui_temp
execute store result storage ui:map map.temp[2] double 0.1 run scoreboard players get $z1 ui_temp
#execute if data storage ui:map map.red run tellraw @a [{"text":"MapData[Red]: "},{"storage":"ui:map","nbt":"map.red","color": "light_purple"},{"text":", TEMP: "},{"storage":"ui:map","nbt":"map.temp","color": "light_purple"}]

execute if data storage ui:map map.red run data modify entity @e[tag=temp_respawn_red,limit=1] Pos set from storage ui:map map.temp

data merge storage ui:map {map:{temp:[0.0d,0.0d,0.0d]}}
execute store result score $x1 ui_temp run data get storage ui:map map.yellow[0] 10
execute store result score $y1 ui_temp run data get storage ui:map map.yellow[1] 10
execute store result score $z1 ui_temp run data get storage ui:map map.yellow[2] 10
scoreboard players add $x1 ui_temp 5
scoreboard players add $y1 ui_temp 5
scoreboard players add $z1 ui_temp 5
execute store result storage ui:map map.temp[0] double 0.1 run scoreboard players get $x1 ui_temp
execute store result storage ui:map map.temp[1] double 0.1 run scoreboard players get $y1 ui_temp
execute store result storage ui:map map.temp[2] double 0.1 run scoreboard players get $z1 ui_temp
#execute if data storage ui:map map.yellow run tellraw @a [{"text":"MapData[Yellow]: "},{"storage":"ui:map","nbt":"map.yellow","color": "yellow"},{"text":", TEMP: "},{"storage":"ui:map","nbt":"map.temp","color": "yellow"}]

execute if data storage ui:map map.yellow run data modify entity @e[tag=temp_respawn_yellow,limit=1] Pos set from storage ui:map map.temp

data merge storage ui:map {map:{temp:[0.0d,0.0d,0.0d]}}
execute store result score $x1 ui_temp run data get storage ui:map map.green[0] 10
execute store result score $y1 ui_temp run data get storage ui:map map.green[1] 10
execute store result score $z1 ui_temp run data get storage ui:map map.green[2] 10
scoreboard players add $x1 ui_temp 5
scoreboard players add $y1 ui_temp 5
scoreboard players add $z1 ui_temp 5
execute store result storage ui:map map.temp[0] double 0.1 run scoreboard players get $x1 ui_temp
execute store result storage ui:map map.temp[1] double 0.1 run scoreboard players get $y1 ui_temp
execute store result storage ui:map map.temp[2] double 0.1 run scoreboard players get $z1 ui_temp
#execute if data storage ui:map map.green run tellraw @a [{"text":"MapData[Green]: "},{"storage":"ui:map","nbt":"map.green","color": "green"},{"text":", TEMP: "},{"storage":"ui:map","nbt":"map.temp","color": "green"}]

execute if data storage ui:map map.green run data modify entity @e[tag=temp_respawn_green,limit=1] Pos set from storage ui:map map.temp

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

# ガチエリア
execute if data storage ui:map {mode:"Area"} run function ui:ui/18/nofunc/start
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 1 positioned -82 34 -201 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon4
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 1 positioned -120 34 -201 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon4
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 2 positioned -32 33 92 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon8
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 3 positioned 46 32 100 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon7
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 4 positioned 0 35 -200 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon7
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 5 positioned -200 37 0 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon4
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 7 positioned 315 41 -11 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon4
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 7 positioned 285 41 -11 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon4
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 8 positioned 200 42 -200 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon4
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 9 positioned 500 37 -200 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon8
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 12 positioned 116 33 -200 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon4
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 12 positioned 78 42 -200 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon5
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 13 positioned 500 36 0 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon5
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 16 positioned 137 33 105 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon4
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 16 positioned 113 33 117 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon4
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 17 positioned -20 36 194 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon4
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 17 positioned -46 36 194 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon4
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 18 positioned 209 34 102 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon4
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 18 positioned 191 34 108 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon4
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 20 positioned -600 34 0 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon6
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 21 positioned -700 32 0 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon7
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 22 positioned 300 37 -200 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon6
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 23 positioned 400 35 -200 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon8
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 25 positioned 800 32 -200 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon6
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 26 positioned 900 34 -200 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon6
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 27 positioned 800 40 0 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon6
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 28 positioned 603 36 0 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon6
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 30 positioned 161 30 -2 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon7
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 31 positioned 600 38 200 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon5
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 32 positioned 500 33 200 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon8
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 35 positioned -160 29 258 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon4
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 35 positioned -144 29 254 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon4
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 37 positioned -139 32 124 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon5
execute if data storage ui:map {mode:"Area"} if score $map ui_world matches 38 positioned -300 31 0 positioned ~ ~-0.5 ~ run function ui:ui/18/nofunc/summon6

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
tag @a remove deadmans_immune
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
