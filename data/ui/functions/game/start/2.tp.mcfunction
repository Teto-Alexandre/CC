#
#execute as @e[tag=map_respawn_blue] if score @s map_id = $map ui_world positioned as @s as @a[scores={ui_team=1},tag=!spectate] run teleport @s ~ ~ ~
#execute as @e[tag=map_respawn_red] if score @s map_id = $map ui_world positioned as @s as @a[scores={ui_team=2},tag=!spectate] run teleport @s ~ ~ ~
#execute as @e[tag=map_respawn_yellow] if score @s map_id = $map ui_world positioned as @s as @a[scores={ui_team=3},tag=!spectate] run teleport @s ~ ~ ~
#execute as @e[tag=map_respawn_green] if score @s map_id = $map ui_world positioned as @s as @a[scores={ui_team=4},tag=!spectate] run teleport @s ~ ~ ~

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

#
kill @e[tag=temp_respawn]

#
gamemode spectator @a