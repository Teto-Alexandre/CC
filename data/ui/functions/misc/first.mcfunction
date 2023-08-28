#> ui:misc/first
#
# tickの最初に実行
#
# 常時監視するスコアをリセットする
#
# @public

# Tickの最初にやること

## 鯖から抜けてた人対策
    execute as @a[scores={ui_lg=1..}] run function ui:misc/leave_game

##
    execute as @a[scores={ui_tmw237_boost=..70}] run scoreboard players set @s ui_use1 0

## メニューキル
    kill @e[type=item,nbt={Item:{tag:{ui:{ismenu:1}}}}]

## モーションスライムキル
    execute if score $motionslime ui_world matches 1 run function ui:misc/kill_slime

## 連キル
    execute as @a if score @s ui_s_kill_time matches 1.. run function ui:misc/kill_time

## 加速リセット
    tag @a[tag=ui_temp_move_nexttick] remove ui_temp_move_nexttick

## 武器移動速度係数リセット
    scoreboard players set @a wep_speed 100

## ゲーム終了
    execute if score $time ui_world matches 0 run setblock -17 30 12 minecraft:redstone_block
    execute if entity @e[tag=ui_17_blue] run setblock -17 30 12 minecraft:redstone_block
    execute if entity @e[tag=ui_17_yellow] run setblock -17 30 12 minecraft:redstone_block
    execute if entity @e[tag=ui_17_red] run setblock -17 30 12 minecraft:redstone_block
    execute if entity @e[tag=ui_17_green] run setblock -17 30 12 minecraft:redstone_block
    execute if score $time ui_world matches 0 run scoreboard players set @a life 0
    execute if entity @e[tag=ui_17_blue] run scoreboard players set @a life 0
    execute if entity @e[tag=ui_17_yellow] run scoreboard players set @a life 0
    execute if entity @e[tag=ui_17_red] run scoreboard players set @a life 0
    execute if entity @e[tag=ui_17_green] run scoreboard players set @a life 0