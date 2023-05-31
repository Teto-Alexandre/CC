effect clear @s levitation
execute store result score $cooltime ui_temp run time query gametime
scoreboard players add $cooltime ui_temp 20
scoreboard players set $changed ui_temp 1
scoreboard players reset @s ui_tmw237_boost