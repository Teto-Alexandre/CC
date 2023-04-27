# 人数補正

# バフ状態を初期化
    execute as @a run function ui:game/pl_comp/before/1.main

#
    scoreboard players set $blue_pl ui_temp 0
    scoreboard players set $red_pl ui_temp 0
    scoreboard players set $yellow_pl ui_temp 0
    scoreboard players set $green_pl ui_temp 0
    scoreboard players set $o_blue_pl ui_temp 0
    scoreboard players set $o_red_pl ui_temp 0
    scoreboard players set $o_yellow_pl ui_temp 0
    scoreboard players set $o_green_pl ui_temp 0
    scoreboard players set $min_pl ui_temp 32767

# 各チームの人数を計測
    execute as @a[scores={ui_team=1},tag=!spectate] run scoreboard players add $blue_pl ui_temp 10
    execute as @a[scores={ui_team=2},tag=!spectate] run scoreboard players add $red_pl ui_temp 10
    execute as @a[scores={ui_team=3},tag=!spectate] run scoreboard players add $yellow_pl ui_temp 10
    execute as @a[scores={ui_team=4},tag=!spectate] run scoreboard players add $green_pl ui_temp 10
    execute as @a[scores={ui_team=1},tag=!spectate] run scoreboard players add $o_blue_pl ui_temp 1
    execute as @a[scores={ui_team=2},tag=!spectate] run scoreboard players add $o_red_pl ui_temp 1
    execute as @a[scores={ui_team=3},tag=!spectate] run scoreboard players add $o_yellow_pl ui_temp 1
    execute as @a[scores={ui_team=4},tag=!spectate] run scoreboard players add $o_green_pl ui_temp 1

#
    execute if score $blue_pl ui_temp matches 1.. run scoreboard players operation $min_pl ui_temp < $blue_pl ui_temp
    execute if score $red_pl ui_temp matches 1.. run scoreboard players operation $min_pl ui_temp < $red_pl ui_temp
    execute if score $yellow_pl ui_temp matches 1.. run scoreboard players operation $min_pl ui_temp < $yellow_pl ui_temp
    execute if score $green_pl ui_temp matches 1.. run scoreboard players operation $min_pl ui_temp < $green_pl ui_temp

# 最小値と同じだけ引く
    scoreboard players operation $blue_pl ui_temp -= $min_pl ui_temp
    scoreboard players operation $red_pl ui_temp -= $min_pl ui_temp
    scoreboard players operation $yellow_pl ui_temp -= $min_pl ui_temp
    scoreboard players operation $green_pl ui_temp -= $min_pl ui_temp

# 人数有利のチームを起点にそれ以外を強化
    #tellraw @a [{"text":"--- 人数補正を適応します ---"}]
    scoreboard players operation $now_pl ui_temp = $blue_pl ui_temp
    #tellraw @a [{"text":"青の人数有利係数: "},{"score":{"name": "$now_pl","objective": "ui_temp"}}]
    execute if score $now_pl ui_temp matches 1.. run function ui:game/pl_comp/0.calc
    execute if score $now_pl ui_temp matches 1.. as @a unless score @s ui_team matches 1 run function ui:game/pl_comp/1.add
    scoreboard players operation $now_pl ui_temp = $red_pl ui_temp
    #tellraw @a [{"text":"赤の人数有利係数: "},{"score":{"name": "$now_pl","objective": "ui_temp"}}]
    execute if score $now_pl ui_temp matches 1.. run function ui:game/pl_comp/0.calc
    execute if score $now_pl ui_temp matches 1.. as @a unless score @s ui_team matches 2 run function ui:game/pl_comp/1.add
    scoreboard players operation $now_pl ui_temp = $yellow_pl ui_temp
    #tellraw @a [{"text":"黄の人数有利係数: "},{"score":{"name": "$now_pl","objective": "ui_temp"}}]
    execute if score $now_pl ui_temp matches 1.. run function ui:game/pl_comp/0.calc
    execute if score $now_pl ui_temp matches 1.. as @a unless score @s ui_team matches 3 run function ui:game/pl_comp/1.add
    scoreboard players operation $now_pl ui_temp = $green_pl ui_temp
    #tellraw @a [{"text":"緑の人数有利係数: "},{"score":{"name": "$now_pl","objective": "ui_temp"}}]
    execute if score $now_pl ui_temp matches 1.. run function ui:game/pl_comp/0.calc
    execute if score $now_pl ui_temp matches 1.. as @a unless score @s ui_team matches 4 run function ui:game/pl_comp/1.add

#
    scoreboard players set $blue_pl ui_temp 0
    scoreboard players set $red_pl ui_temp 0
    scoreboard players set $yellow_pl ui_temp 0
    scoreboard players set $green_pl ui_temp 0
    scoreboard players set $o_blue_pl ui_temp 0
    scoreboard players set $o_red_pl ui_temp 0
    scoreboard players set $o_yellow_pl ui_temp 0
    scoreboard players set $o_green_pl ui_temp 0
    scoreboard players set $min_pl ui_temp 0
    scoreboard players set $now_pl ui_temp 0
