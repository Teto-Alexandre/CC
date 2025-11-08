scoreboard players add @s ui_tmw237_boost 1

scoreboard players operation $boost ui_temp = @s ui_tmw237_boost
scoreboard players remove $boost ui_temp 2

execute if score $boost ui_temp matches 0 run function ui:tmw/237/constant/boost/shot1

execute as @s[tag=tmw_oh_s] if score $cooltime ui_temp matches 0 run function ui:tmw/237/constant/boost/shot2


scoreboard players set $success ui_temp 1