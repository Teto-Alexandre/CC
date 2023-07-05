scoreboard players remove @s health 40
scoreboard players remove @s shoot_speed 12
scoreboard players remove @s move_speed 24
scoreboard players remove @s norma_damage 80
scoreboard players remove @s sub_damage 12
scoreboard players remove @s ink_regen 20
scoreboard players remove @s main_eff_acc 20
scoreboard players remove @s sub_eff_acc 20
scoreboard players remove @s charge_acc 28

scoreboard players remove @s ui_tmw237_energy_charge_count 1

execute if score @s ui_tmw237_energy_charge_count matches 1.. run function ui:module/energy_charge/remove.2
execute if score @s ui_tmw237_energy_charge_count matches ..0 run scoreboard players reset @s ui_tmw237_energy_charge_count