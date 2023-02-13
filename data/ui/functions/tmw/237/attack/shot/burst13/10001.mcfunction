# スピンギア汎用
    #tellraw @s [{"score":{"name": "$burst.per","objective": "ui_temp"}}]

    scoreboard players operation $speed ui_temp *= $burst.per ui_temp
    scoreboard players operation $speed.plus ui_temp *= $burst.per ui_temp
    scoreboard players operation $range ui_temp *= $burst.per ui_temp
    scoreboard players operation $spread ui_temp *= #100 ui_num

    scoreboard players operation $speed ui_temp /= #100 ui_num
    scoreboard players operation $speed.plus ui_temp /= #100 ui_num
    scoreboard players operation $range ui_temp /= #100 ui_num
    scoreboard players operation $spread ui_temp /= $burst.per ui_temp