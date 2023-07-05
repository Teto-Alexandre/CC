#
scoreboard players remove @s ui_tmw237_energy_charge_time 1

#
particle flame ~ ~0.9 ~ 0.5 0.5 0.5 0.03 1 force

#
execute if score @s ui_tmw237_energy_charge_time matches 0 run function ui:module/energy_charge/remove