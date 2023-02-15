# 射撃体勢！
    function ui:tmw/237/constant/shoot

# 必要データ収集
    data modify storage ui:gun temp2 set from entity @s SelectedItem.tag.tmw.main
    execute store result score $shottype ui_temp run data get storage ui:gun temp2.ShotType
    scoreboard players set $ink.add ui_temp 0

# メインプロセスに送信
    execute if score $shottype ui_temp matches 1 run function ui:tmw/237/attack/shot/core
    execute if score $shottype ui_temp matches 2 run function ui:tmw/237/attack/roll/core

# インク減少
    scoreboard players operation $ink ui_temp -= $ink.main ui_temp
    scoreboard players operation $ink ui_temp -= $ink.add ui_temp

# 変更した
    execute if score $burst ui_temp matches ..0 unless score $bursttype ui_temp matches 7..8 unless score $bursttype ui_temp matches 10..11 unless score $bursttype ui_temp matches 13 unless score $bursttype ui_temp matches 15 run scoreboard players set $ishold ui_temp 1
    scoreboard players set $changed ui_temp 1