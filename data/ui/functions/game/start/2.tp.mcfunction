#
#execute as @e[tag=map_respawn_blue] if score @s map_id = $map ui_world positioned as @s as @a[scores={ui_team=1},tag=!spectate] run teleport @s ~ ~ ~
#execute as @e[tag=map_respawn_red] if score @s map_id = $map ui_world positioned as @s as @a[scores={ui_team=2},tag=!spectate] run teleport @s ~ ~ ~
#execute as @e[tag=map_respawn_yellow] if score @s map_id = $map ui_world positioned as @s as @a[scores={ui_team=3},tag=!spectate] run teleport @s ~ ~ ~
#execute as @e[tag=map_respawn_green] if score @s map_id = $map ui_world positioned as @s as @a[scores={ui_team=4},tag=!spectate] run teleport @s ~ ~ ~

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

#
execute as @a run function ui:tmw/243/core/gear_reader/active
function ui:game/pl_comp/
execute as @a[tag=king] run scoreboard players add @s health 800

#
tag @a add speedtype_shoot
tag @a remove speedtype_move
tag @a[tag=module32] remove module32

#
kill @e[tag=temp_respawn]

#
gamemode spectator @a