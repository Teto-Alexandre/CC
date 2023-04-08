# ラレユサイクル
    execute if score $burst_alt ui_temp matches 6.. run scoreboard players add $damage ui_temp 60
    execute if score $burst_alt ui_temp matches 11.. run scoreboard players add $damage ui_temp 60
    execute if score $burst_alt ui_temp matches 6.. run scoreboard players add $ink.add ui_temp 15
    execute if score $burst_alt ui_temp matches 11.. run scoreboard players add $ink.add ui_temp 15
    execute if score $burst_alt ui_temp matches 6.. run scoreboard players add $range ui_temp 20
    execute if score $burst_alt ui_temp matches 11.. run scoreboard players add $range ui_temp 14
    execute if score $burst_alt ui_temp matches 6.. run scoreboard players add $speed ui_temp 7
    execute if score $burst_alt ui_temp matches 11.. run scoreboard players add $speed ui_temp 7
    execute if score $burst_alt ui_temp matches 6.. run scoreboard players add $particle.end ui_temp 0
    execute if score $burst_alt ui_temp matches 11.. run scoreboard players add $particle.end ui_temp 1
    execute if score $burst_alt ui_temp matches 1.. run scoreboard players remove $burst_alt ui_temp 1
    execute if score $burst_alt ui_temp matches 1.. run scoreboard players operation $burst_alt ui_temp *= #12 ui_num
    execute if score $burst_alt ui_temp matches 1.. run scoreboard players operation $spread ui_temp -= $burst_alt ui_temp