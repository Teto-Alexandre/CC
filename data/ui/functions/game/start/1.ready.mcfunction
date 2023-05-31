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

# -117 31 -1   -19 31 -28
execute if data storage ui:map {mode:"Asiba"} run summon bat -117 32 0 {Silent:1b,NoAI:1b,Tags:["ui_egg","ui_17"]}
execute if data storage ui:map {mode:"Asiba"} run fill -117 31 -1 -19 31 -28 light_blue_concrete replace white_concrete
execute if data storage ui:map {mode:"Asiba"} run fill -117 31 -1 -19 31 -28 light_blue_concrete replace pink_concrete
execute if data storage ui:map {mode:"Asiba"} run fill -117 31 1 -19 31 28 pink_concrete replace white_concrete
execute if data storage ui:map {mode:"Asiba"} run fill -117 31 1 -19 31 28 pink_concrete replace light_blue_concrete

#
tellraw @a ["",{"text":"system>> ","color":"white"},{"text":"5秒後に開始します・・・","color":"gold"}]
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 0.5 1
effect give @a resistance 10 127 true
execute as @a[tag=tmw_237_respawning] run scoreboard players set @s ui_rst 1
gamemode spectator @a

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
