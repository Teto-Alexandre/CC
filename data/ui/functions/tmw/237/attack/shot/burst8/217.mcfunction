# ラレユピアサー・ナーラ
    scoreboard players operation $damage ui_temp += $burst_alt ui_temp
    scoreboard players operation $damage ui_temp += $burst_alt ui_temp
    scoreboard players operation $damage ui_temp += $burst_alt ui_temp
    scoreboard players operation $ink.add ui_temp += $burst_alt ui_temp
    scoreboard players operation $ink.add ui_temp += $burst_alt ui_temp
    scoreboard players operation $ink.add ui_temp += $burst_alt ui_temp
    scoreboard players operation $ink.add ui_temp += $burst_alt ui_temp
    scoreboard players operation $ink.add ui_temp += $burst_alt ui_temp
    scoreboard players operation $ink.add ui_temp += $burst_alt ui_temp
    scoreboard players operation $ink.add ui_temp += $burst_alt ui_temp
    scoreboard players operation $ink.add ui_temp += $burst_alt ui_temp
    scoreboard players operation $ink.add ui_temp += $burst_alt ui_temp
    scoreboard players operation $range ui_temp += $burst_alt ui_temp
    scoreboard players operation $range ui_temp += $burst_alt ui_temp
    execute if score $burst_alt ui_temp matches 50.. run scoreboard players set $damage ui_temp 640
    execute if score $burst_alt ui_temp matches 50.. run data merge storage ui:gun {temp2:{Sound:5}}
    execute if score $burst_alt ui_temp matches 50.. run scoreboard players set $particle.fly ui_temp 2
    execute if score $burst_alt ui_temp matches 50.. run scoreboard players set $particle.end ui_temp 113
    execute if score $burst_alt ui_temp matches 50.. run scoreboard players set $range ui_temp 99