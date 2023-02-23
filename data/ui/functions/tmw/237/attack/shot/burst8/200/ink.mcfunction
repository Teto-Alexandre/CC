#消費インク

#
execute store result score $max ui_temp run data get storage ui:gun temp2.Charge.MaxInk
execute store result score $min ui_temp run data get storage ui:gun temp2.Charge.MinInk
execute store result score $fc ui_temp run data get storage ui:gun temp2.Charge.FCInk

#
scoreboard players operation $max ui_temp *= $burst_percent ui_temp
scoreboard players operation $min ui_temp *= $burst_percent.i ui_temp

#
scoreboard players operation $ink.add ui_temp = $max ui_temp
scoreboard players operation $ink.add ui_temp += $min ui_temp
scoreboard players operation $ink.add ui_temp /= #100 ui_num
execute if score $burst_percent ui_temp matches 100.. run scoreboard players operation $ink.add ui_temp = $fc ui_temp