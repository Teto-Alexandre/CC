scoreboard players set $changed ui_temp 1
scoreboard players add $ishold ui_temp 1
scoreboard players operation @s charge_acc_current < #100 ui_num
scoreboard players operation @s charge_acc_current > #0 ui_num
scoreboard players operation @s charge_acc_current += @s charge_acc
execute if score $ishold ui_temp = $burst.max ui_temp at @s run playsound block.iron_door.open player @s ~ ~ ~ 1 1.2 0
execute if score @s charge_acc_current matches 100.. run scoreboard players add $ishold ui_temp 1
execute if score @s charge_acc_current matches 100.. if score $ishold ui_temp = $burst.max ui_temp at @s run playsound block.iron_door.open player @s ~ ~ ~ 1 1.2 0
execute if score @s charge_acc_current matches 100.. run scoreboard players remove @s charge_acc_current 100