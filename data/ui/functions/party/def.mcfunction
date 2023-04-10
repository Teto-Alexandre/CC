#
scoreboard players set $temp ui_temp 10
scoreboard players operation $temp ui_temp -= $def party_mode

scoreboard players operation $Damage tds_dmg *= $temp ui_temp
scoreboard players operation $Damage tds_dmg /= #10 ui_num