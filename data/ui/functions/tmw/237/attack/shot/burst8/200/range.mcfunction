#射程

#
execute store result score $max ui_temp run data get storage ui:gun temp2.Charge.MaxRange
execute store result score $min ui_temp run data get storage ui:gun temp2.Charge.MinRange
execute store result score $fc ui_temp run data get storage ui:gun temp2.Charge.FCRange

#
scoreboard players operation $max ui_temp *= $burst_percent ui_temp
scoreboard players operation $min ui_temp *= $burst_percent.i ui_temp

#
scoreboard players operation $range ui_temp = $max ui_temp
scoreboard players operation $range ui_temp += $min ui_temp
scoreboard players operation $range ui_temp /= #100 ui_num
execute if score $burst_percent ui_temp matches 100.. run scoreboard players operation $range ui_temp = $fc ui_temp