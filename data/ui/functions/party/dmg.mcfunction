#
scoreboard players operation $mod ui_calc1 = $dmg party_mode
scoreboard players operation $mod ui_calc1 *= #2 ui_num
scoreboard players add $mod ui_calc1 1

function ui:common/rand

scoreboard players operation $temp ui_temp = $rand ui_calc1
scoreboard players operation $temp ui_temp -= $dmg party_mode
scoreboard players add $temp ui_temp 10

scoreboard players operation $Damage tds_dmg *= $temp ui_temp
scoreboard players operation $Damage tds_dmg /= #10 ui_num