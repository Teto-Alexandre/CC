# 専用ワールド用の簡易実行関数

#declare storage ui:map

execute as @a run function ui:template/inventory/push
execute as @a run function ui:template/inventory/pull_first

#
function ui:game/map/shuffle/
execute store result score $map ui_world run data get storage ui:map map.ID
function ui:game/map/core_tp

#
tellraw @a ["",{"text":"system>> ","color":"white"},{"text":"5秒後に開始します・・・","color":"gold"}]
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 0.5 1
effect give @a resistance 10 127 true
execute as @a[tag=tmw_237_respawning] run scoreboard players set @s ui_rst 1
gamemode spectator @a

# tp

# 武器放送
execute as @a[scores={ui_team=1},tag=!spectate] run function ui:tmw/237/nofunc/bro_weapon
execute as @a[scores={ui_team=2},tag=!spectate] run function ui:tmw/237/nofunc/bro_weapon
execute as @a[scores={ui_team=3},tag=!spectate] run function ui:tmw/237/nofunc/bro_weapon
execute as @a[scores={ui_team=4},tag=!spectate] run function ui:tmw/237/nofunc/bro_weapon

#
schedule function ui:game/start/2.tp 1s

#
scoreboard players set $Countdown ui_temp 3
schedule function ui:game/start/3.countdown 2s

# ダメテス殺し
kill @e[tag=damage_tester]
