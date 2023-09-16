# ボスバーの編集
scoreboard players set $area_progress_display ui_temp 0
execute if score $area_progress ui_temp matches ..999 run scoreboard players operation $area_progress_display ui_temp -= $area_progress ui_temp
execute if score $area_progress ui_temp matches ..999 store result bossbar ui:area value run scoreboard players add $area_progress_display ui_temp 1000
execute if score $area_progress ui_temp matches ..999 run scoreboard players operation $area_progress_display ui_temp /= #10 ui_num
execute if score $area_progress ui_temp matches ..999 run bossbar set ui:area name [{"text": "エリア支配度: ","color": "yellow","bold": true},{"score":{"name": "$area_progress_display","objective": "ui_temp"},"color": "yellow"},{"text": "%","color": "yellow","bold": true}]
execute if score $area_progress ui_temp matches ..999 run bossbar set ui:area color yellow
execute if score $area_progress ui_temp matches 1000 run bossbar set ui:area value 0
execute if score $area_progress ui_temp matches 1000 run bossbar set ui:area name [{"text": "エリア支配度: ","color": "white","bold": true},{"score":{"name": "$area_progress_display","objective": "ui_temp"},"color": "white"},{"text": "%","color": "white","bold": true}]
execute if score $area_progress ui_temp matches 1000 run bossbar set ui:area color white
execute if score $area_progress ui_temp matches 1001.. run scoreboard players operation $area_progress_display ui_temp = $area_progress ui_temp
execute if score $area_progress ui_temp matches 1001.. store result bossbar ui:area value run scoreboard players remove $area_progress_display ui_temp 1000
execute if score $area_progress ui_temp matches 1001.. run scoreboard players operation $area_progress_display ui_temp /= #10 ui_num
execute if score $area_progress ui_temp matches 1001.. run bossbar set ui:area name [{"text": "エリア支配度: ","color": "aqua","bold": true},{"score":{"name": "$area_progress_display","objective": "ui_temp"},"color": "aqua"},{"text": "%","color": "aqua","bold": true}]
execute if score $area_progress ui_temp matches 1001.. run bossbar set ui:area color blue

# 触媒の最大値計算
scoreboard players set $area_total ui_temp 0
execute as @e[tag=ui_18] run scoreboard players operation $area_total ui_temp += @s ui_is

# 触媒のカウント
scoreboard players set $area_blue ui_temp 0
scoreboard players set $area_yellow ui_temp 0
execute as @e[tag=ui_18_rad4] at @s run function ui:ui/18/count/4
execute as @e[tag=ui_18_rad5] at @s run function ui:ui/18/count/5
execute as @e[tag=ui_18_rad6] at @s run function ui:ui/18/count/6
execute as @e[tag=ui_18_rad7] at @s run function ui:ui/18/count/7
execute as @e[tag=ui_18_rad8] at @s run function ui:ui/18/count/8
scoreboard players operation $area_blue ui_temp *= #100 ui_num
scoreboard players operation $area_yellow ui_temp *= #100 ui_num
scoreboard players operation $area_blue ui_temp /= $area_total ui_temp
scoreboard players operation $area_yellow ui_temp /= $area_total ui_temp

# 状態変化
execute if score $area_color ui_temp matches 0 if score $area_blue ui_temp matches 80.. run function ui:ui/18/shift/cap_blue
execute if score $area_color ui_temp matches 0 if score $area_yellow ui_temp matches 80.. run function ui:ui/18/shift/cap_yellow
execute if score $area_color ui_temp matches 2 if score $area_blue ui_temp matches ..51 run function ui:ui/18/shift/no
execute if score $area_color ui_temp matches -2 if score $area_yellow ui_temp matches ..51 run function ui:ui/18/shift/no

# パーティクル
execute as @e[tag=ui_18_rad4] at @s positioned ~ ~0.6 ~ run function ui:ui/18/particle/4
execute as @e[tag=ui_18_rad5] at @s positioned ~ ~0.6 ~ run function ui:ui/18/particle/5
execute as @e[tag=ui_18_rad6] at @s positioned ~ ~0.6 ~ run function ui:ui/18/particle/6
execute as @e[tag=ui_18_rad7] at @s positioned ~ ~0.6 ~ run function ui:ui/18/particle/7
execute as @e[tag=ui_18_rad8] at @s positioned ~ ~0.6 ~ run function ui:ui/18/particle/8

#
execute if score $area_color ui_temp matches 2 if score $area_progress ui_temp matches ..300 run scoreboard players operation $area_progress ui_temp += $area_progress_boost ui_temp
execute if score $area_color ui_temp matches 2 if score $area_progress ui_temp matches ..600 run scoreboard players operation $area_progress ui_temp += $area_progress_boost ui_temp
execute if score $area_color ui_temp matches 2 run scoreboard players operation $area_progress ui_temp += $area_progress_boost ui_temp
execute if score $area_color ui_temp matches -2 if score $area_progress ui_temp matches 1700.. run scoreboard players operation $area_progress ui_temp -= $area_progress_boost ui_temp
execute if score $area_color ui_temp matches -2 if score $area_progress ui_temp matches 1400.. run scoreboard players operation $area_progress ui_temp -= $area_progress_boost ui_temp
execute if score $area_color ui_temp matches -2 run scoreboard players operation $area_progress ui_temp -= $area_progress_boost ui_temp

#
execute if score $area_progress ui_temp matches 2000.. as @e[tag=ui_18] at @s run function ui:ui/18/blue_win
execute if score $area_progress ui_temp matches ..0 as @e[tag=ui_18] at @s run function ui:ui/18/yellow_win

#
#tellraw @a [{"score":{"name": "$area_total","objective": "ui_temp"}},{"text":", "},{"score":{"name": "$area_blue","objective": "ui_temp"},"color": "aqua"},{"text":", "},{"score":{"name": "$area_yellow","objective": "ui_temp"},"color": "yellow"}]