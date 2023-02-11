#
execute as @e[tag=map_respawn_blue] if score @s map_id = $map ui_world positioned as @s as @a[scores={ui_team=1}] run teleport @s ~ ~ ~
execute as @e[tag=map_respawn_red] if score @s map_id = $map ui_world positioned as @s as @a[scores={ui_team=2}] run teleport @s ~ ~ ~
execute as @e[tag=map_respawn_yellow] if score @s map_id = $map ui_world positioned as @s as @a[scores={ui_team=3}] run teleport @s ~ ~ ~
execute as @e[tag=map_respawn_green] if score @s map_id = $map ui_world positioned as @s as @a[scores={ui_team=4}] run teleport @s ~ ~ ~
gamemode spectator @a