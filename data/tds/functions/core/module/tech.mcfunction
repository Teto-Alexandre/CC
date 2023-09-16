scoreboard players operation $killcount1 ui_temp = @a[tag=tds_attacker_temp] ui_s_kill
scoreboard players operation $killcount2 ui_temp = @s ui_s_kill

scoreboard players operation $killcount1 ui_temp -= $killcount2 ui_temp

#scoreboard players operation $Damage tds_dmg /= #2 ui_num
execute if score $killcount1 ui_temp matches -1..1 run scoreboard players set $killcount1 ui_temp 0
scoreboard players operation $killcount1 ui_temp *= #5 ui_num
scoreboard players add $killcount1 ui_temp 100
execute if score $killcount1 ui_temp matches ..9 run scoreboard players set $killcount1 ui_temp 10

scoreboard players operation $Damage tds_dmg *= #100 ui_num
scoreboard players operation $Damage tds_dmg /= $killcount1 ui_temp

scoreboard players reset $killcount1 ui_temp
scoreboard players reset $killcount2 ui_temp