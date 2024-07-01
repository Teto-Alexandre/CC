# 必要データ収集
execute store result score $ct ui_temp run data get storage ui:gun temp.SubCT

# アカシック
scoreboard players operation #_ ui_temp = $activator ui_temp
scoreboard players operation #_ ui_temp %= #100 ui_num
execute if score #_ ui_temp matches ..50 if score $module ui_world matches 1 if score @s module matches 50 run function ui:tmw/237/sub/record

# サブウェポン発動
scoreboard players operation $activator ui_temp = $subtype ui_temp
execute if score $activator ui_temp matches 101..200 run function ui:tmw/237/activator/throw
execute if score $activator ui_temp matches 201..300 run function ui:tmw/237/activator/here
execute if score $activator ui_temp matches 301..400 at @s run function ui:tmw/237/activator/static
execute if score $activator ui_temp matches 401..500 at @s run function ui:tmw/237/activator/weapon
execute if score $activator ui_temp matches 1001.. run function ui:tmw/237/activator/unique/master


# スペシャルタイムをセット
scoreboard players operation $subtime ui_temp = $subtime.max ui_temp

# インク減少
scoreboard players operation $ink.sub ui_temp *= #100 ui_num
scoreboard players operation $ink.sub ui_temp /= @s sub_eff_acc

execute if entity @s[tag=sub_custom_1] run scoreboard players operation $ink.sub ui_temp *= #2 ui_num
execute if entity @s[tag=sub_custom_2] run scoreboard players operation $ink.sub ui_temp *= #3 ui_num
execute if entity @s[tag=sub_custom_2] run scoreboard players operation $ink.sub ui_temp /= #2 ui_num
execute if entity @s[tag=sub_custom_3] run scoreboard players operation $ink.sub ui_temp /= #2 ui_num
execute if entity @s[tag=sub_custom_4] run scoreboard players operation $ink.sub ui_temp *= #2 ui_num
execute if entity @s[tag=sub_custom_4] run scoreboard players operation $ink.sub ui_temp /= #3 ui_num

scoreboard players operation $ink ui_temp -= $ink.sub ui_temp
scoreboard players operation $cooltime_old ui_temp = $cooltime ui_temp
execute store result score $cooltime ui_temp run time query gametime
scoreboard players operation $cooltime ui_temp += $ct ui_temp
execute unless score $sub_quick_cancel party_mode matches 1.. run scoreboard players operation $cooltime ui_temp > $cooltime_old ui_temp
scoreboard players reset $cooltime_old ui_temp

#
scoreboard players add @s ui_s_q 1

#
scoreboard players set $success ui_temp 1

#
scoreboard players set $changed ui_temp 1