#
execute if score $burst ui_temp matches 0 if score $cooltime ui_temp matches 0 as @s[scores={ui_use2=1..}] run function ui:tmw/237/burst/3
execute if score $burst ui_temp matches 1.. as @s[scores={ui_use1=1..}] run function ui:tmw/237/burst/3_stop