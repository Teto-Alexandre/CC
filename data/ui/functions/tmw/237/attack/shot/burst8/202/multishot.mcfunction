#ダメージ

#
execute store result score $max ui_temp run data get storage ui:gun temp2.Charge.MaxMultiShot
execute store result score $min ui_temp run data get storage ui:gun temp2.Charge.MinMultiShot
execute store result score $fc ui_temp run data get storage ui:gun temp2.Charge.FCMultiShot

#
scoreboard players operation $max ui_temp *= $burst_percent ui_temp
scoreboard players operation $min ui_temp *= $burst_percent.i ui_temp

#
scoreboard players operation $multishot ui_temp = $max ui_temp
scoreboard players operation $multishot ui_temp += $min ui_temp
scoreboard players operation $multishot ui_temp /= #100 ui_num
execute if score $burst_percent ui_temp matches 100.. run scoreboard players operation $multishot ui_temp = $fc ui_temp

#
#tellraw @a [{"text":"damage: "},{"score":{"name": "$damage","objective": "ui_temp"}}]