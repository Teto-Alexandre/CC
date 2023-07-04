particle witch ~ ~0.9 ~ 0.5 0.5 0.5 0.1 40 force
particle wax_off ~ ~0.9 ~ 0.5 0.5 0.5 0.1 20 force
playsound block.note_block.snare player @a ~ ~ ~ 1 1 0
playsound entity.firework_rocket.twinkle player @a ~ ~ ~ 1 1.5 0

scoreboard players reset @s ui_tmw237_energy_charge_time

function ui:module/energy_charge/remove.2

execute if entity @s[tag=speedtype_shoot] run function ui:template/stats/shoot_speed
execute if entity @s[tag=speedtype_move] run function ui:template/stats/move_speed