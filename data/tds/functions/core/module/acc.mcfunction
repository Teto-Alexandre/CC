execute if entity @s[tag=!module32] run function tds:core/module/acc_first

scoreboard players operation $Damage tds_dmg *= #7 ui_num
scoreboard players operation $Damage tds_dmg /= #10 ui_num