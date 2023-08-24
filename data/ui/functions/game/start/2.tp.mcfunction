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
execute if data storage ui:map map.blue run data modify entity @e[tag=temp_respawn_blue,limit=1] Pos set from storage ui:map map.blue
execute if data storage ui:map map.red run data modify entity @e[tag=temp_respawn_red,limit=1] Pos set from storage ui:map map.red
execute if data storage ui:map map.yellow run data modify entity @e[tag=temp_respawn_yellow,limit=1] Pos set from storage ui:map map.yellow
execute if data storage ui:map map.green run data modify entity @e[tag=temp_respawn_green,limit=1] Pos set from storage ui:map map.green

#
execute as @e[tag=temp_respawn_blue] positioned as @s as @a[scores={ui_team=1},tag=!spectate] run teleport @s ~ ~ ~
execute as @e[tag=temp_respawn_red] positioned as @s as @a[scores={ui_team=2},tag=!spectate] run teleport @s ~ ~ ~
execute as @e[tag=temp_respawn_yellow] positioned as @s as @a[scores={ui_team=3},tag=!spectate] run teleport @s ~ ~ ~
execute as @e[tag=temp_respawn_green] positioned as @s as @a[scores={ui_team=4},tag=!spectate] run teleport @s ~ ~ ~

#
execute as @a run function ui:tmw/243/core/gear_reader/active
function ui:game/pl_comp/
execute as @a[tag=king] run scoreboard players add @s health 800
execute if score $module ui_world matches 1 as @a if score @s module matches 30 run scoreboard players add @s ink_regen 200
execute if score $module ui_world matches 1 as @a if score @s module matches 33 run scoreboard players add @s health 100
execute if score $module ui_world matches 1 as @a if score @s module matches 33 run scoreboard players remove @s ink_regen 50
execute if score $module ui_world matches 1 as @a if score @s module matches 36 run scoreboard players remove @s sub_eff_acc 50

#
tag @a add speedtype_shoot
tag @a remove speedtype_move
tag @a[tag=module32] remove module32

#
kill @e[tag=temp_respawn]

#
gamemode spectator @a