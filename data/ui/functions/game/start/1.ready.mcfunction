# 専用ワールド用の簡易実行関数

#declare storage ui:map

execute as @a run function ui:template/inventory/push
execute unless score $secondary ui_world matches 1 as @a run function ui:template/inventory/pull_first
execute if score $secondary ui_world matches 1 as @a run function ui:template/inventory/pull_second
clear @a cobblestone

# 残基があるなら
execute if score $life ui_world matches 0.. run scoreboard players operation @a life = $life ui_world

#
function ui:game/map/shuffle/
execute store result score $map ui_world run data get storage ui:map map.ID
execute store result score $default_color ui_temp run data get storage ui:map map.color
function ui:game/map/core_tp

# ガチアシバ
execute if data storage ui:map {mode:"Asiba"} if score $map ui_world matches 33 run summon bat -117 32 0 {Silent:1b,NoAI:1b,Tags:["ui_egg","ui_17"]}
execute if data storage ui:map {mode:"Asiba"} if score $map ui_world matches 33 run fill -117 31 -1 -19 31 -28 light_blue_concrete replace white_concrete
execute if data storage ui:map {mode:"Asiba"} if score $map ui_world matches 33 run fill -117 31 -1 -19 31 -28 light_blue_concrete replace yellow_concrete
execute if data storage ui:map {mode:"Asiba"} if score $map ui_world matches 33 run fill -117 31 1 -19 31 28 yellow_concrete replace white_concrete
execute if data storage ui:map {mode:"Asiba"} if score $map ui_world matches 33 run fill -117 31 1 -19 31 28 yellow_concrete replace light_blue_concrete

# レイドボス
execute if data storage ui:map {mode:"Boss"} if score $map ui_world matches 34 run spreadplayers -188 -175 1 25 under 40 false @a[scores={ui_team=1}]
execute if data storage ui:map {mode:"Boss"} if score $map ui_world matches 34 as @a[scores={ui_team=1}] positioned -188 30 -175 facing entity @s eyes rotated ~180 ~ positioned as @s run teleport @s ~ ~ ~ ~ ~

#
tellraw @a ["",{"text":"system>> ","color":"white"},{"text":"5秒後に開始します・・・","color":"gold"}]
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 0.5 1
effect give @a resistance 10 127 true
tag @a remove ui_unhurtable
tag @a remove ui_resistance
execute as @a[tag=tmw_237_respawning] run scoreboard players set @s ui_rst 1
gamemode spectator @a

#
execute if score $autoteam ui_world matches 1 unless score $teamset ui_world matches 1.. run function ui:game/team2
execute if score $autoteam ui_world matches 1 if score $teamset ui_world matches 1 run function ui:game/team3
execute if score $autoteam ui_world matches 1 if score $teamset ui_world matches 2 run function ui:game/team4
execute if score $autoteam ui_world matches 1 if score $teamset ui_world matches 3 run scoreboard players set @a ui_team 1
execute as @a if score @s ui_team matches 1 run team join blue @s
execute as @a if score @s ui_team matches 2 run team join red @s
execute as @a if score @s ui_team matches 3 run team join yellow @s
execute as @a if score @s ui_team matches 4 run team join green @s

# 武器放送
execute as @a[scores={ui_team=1},tag=!spectate] run function ui:tmw/237/nofunc/bro_weapon
execute as @a[scores={ui_team=2},tag=!spectate] run function ui:tmw/237/nofunc/bro_weapon
execute as @a[scores={ui_team=3},tag=!spectate] run function ui:tmw/237/nofunc/bro_weapon
execute as @a[scores={ui_team=4},tag=!spectate] run function ui:tmw/237/nofunc/bro_weapon

# ガチキング
tag @a remove king
execute if score $gamemode ui_world matches 1 run function ui:game/start/king

#
schedule function ui:game/start/2.tp 1s

#
scoreboard players set $Countdown ui_temp 3
schedule function ui:game/start/3.countdown 2s

# ダメテス殺し
kill @e[tag=damage_tester]
