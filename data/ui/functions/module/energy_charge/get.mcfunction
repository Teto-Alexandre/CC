## 4ギア相当のバフ
execute unless score @s ui_tmw237_energy_charge_count matches 5.. run scoreboard players add @s health 40
execute unless score @s ui_tmw237_energy_charge_count matches 5.. run scoreboard players add @s shoot_speed 12
execute unless score @s ui_tmw237_energy_charge_count matches 5.. run scoreboard players add @s move_speed 24
execute unless score @s ui_tmw237_energy_charge_count matches 5.. run scoreboard players add @s norma_damage 80
execute unless score @s ui_tmw237_energy_charge_count matches 5.. run scoreboard players add @s sub_damage 12
execute unless score @s ui_tmw237_energy_charge_count matches 5.. run scoreboard players add @s ink_regen 20
execute unless score @s ui_tmw237_energy_charge_count matches 5.. run scoreboard players add @s main_eff_acc 20
execute unless score @s ui_tmw237_energy_charge_count matches 5.. run scoreboard players add @s sub_eff_acc 20
execute unless score @s ui_tmw237_energy_charge_count matches 5.. run scoreboard players add @s charge_acc 28

execute unless score @s ui_tmw237_energy_charge_count matches 5.. run scoreboard players add @s ui_tmw237_energy_charge_count 1
scoreboard players set @s ui_tmw237_energy_charge_time 600

particle minecraft:glow ~ ~0.9 ~ 0.5 0.5 0.5 0.1 40 force
particle minecraft:wax_on ~ ~0.9 ~ 0.5 0.5 0.5 0.1 20 force
playsound block.anvil.use player @a ~ ~ ~ 1 2 0
execute if score @s ui_tmw237_energy_charge_count matches 1 run playsound block.respawn_anchor.charge player @a ~ ~ ~ 1 1.2 0
execute if score @s ui_tmw237_energy_charge_count matches 2 run playsound block.respawn_anchor.charge player @a ~ ~ ~ 1 1.4 0
execute if score @s ui_tmw237_energy_charge_count matches 3 run playsound block.respawn_anchor.charge player @a ~ ~ ~ 1 1.6 0
execute if score @s ui_tmw237_energy_charge_count matches 4 run playsound block.respawn_anchor.charge player @a ~ ~ ~ 1 1.8 0
execute if score @s ui_tmw237_energy_charge_count matches 5 run playsound block.respawn_anchor.charge player @a ~ ~ ~ 1 2 0