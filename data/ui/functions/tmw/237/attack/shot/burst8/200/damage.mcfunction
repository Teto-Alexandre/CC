#ダメージ

#
execute store result score $max ui_temp run data get storage ui:gun temp2.Charge.MaxDamage
execute store result score $min ui_temp run data get storage ui:gun temp2.Charge.MinDamage
execute store result score $fc ui_temp run data get storage ui:gun temp2.Charge.FCDamage

#
scoreboard players operation $max ui_temp *= $burst_percent ui_temp
scoreboard players operation $min ui_temp *= $burst_percent.i ui_temp

#
scoreboard players operation $damage ui_temp = $max ui_temp
scoreboard players operation $damage ui_temp += $min ui_temp
scoreboard players operation $damage ui_temp /= #100 ui_num
execute if score $burst_percent ui_temp matches 100.. run scoreboard players operation $damage ui_temp = $fc ui_temp

#
#tellraw @a [{"text":"damage: "},{"score":{"name": "$damage","objective": "ui_temp"}}]