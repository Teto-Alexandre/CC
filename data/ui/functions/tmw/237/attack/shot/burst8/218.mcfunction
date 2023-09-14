# パワードサイクル
    execute if score $burst_alt ui_temp matches 16.. run scoreboard players add $damage ui_temp 45
    execute if score $burst_alt ui_temp matches 31.. run scoreboard players add $damage ui_temp 60
    execute if score $burst_alt ui_temp matches 16.. run scoreboard players add $ink.add ui_temp 80
    execute if score $burst_alt ui_temp matches 31.. run scoreboard players add $ink.add ui_temp 100
    execute if score $burst_alt ui_temp matches 16.. run scoreboard players add $range ui_temp 16
    execute if score $burst_alt ui_temp matches 31.. run scoreboard players add $range ui_temp 8
    execute if score $burst_alt ui_temp matches 16.. run scoreboard players add $speed ui_temp 10
    execute if score $burst_alt ui_temp matches 31.. run scoreboard players add $speed ui_temp 10
    execute if score $burst_alt ui_temp matches 16.. run scoreboard players add $particle.end ui_temp 1
    execute if score $burst_alt ui_temp matches 31.. run scoreboard players add $particle.end ui_temp 10002