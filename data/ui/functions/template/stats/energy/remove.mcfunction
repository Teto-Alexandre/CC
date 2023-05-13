scoreboard players remove @s health 60
scoreboard players remove @s shoot_speed 18
scoreboard players remove @s move_speed 36
scoreboard players remove @s norma_damage 120
scoreboard players remove @s respawn_acc 60
scoreboard players remove @s ink_regen 30
scoreboard players remove @s main_eff_acc 30
scoreboard players remove @s sub_eff_acc 30
scoreboard players remove @s charge_acc 42

particle soul ~ ~0.9 ~ 0.5 0.5 0.5 0.1 40 force
particle soul_fire_flame ~ ~0.9 ~ 0.5 0.5 0.5 0.1 40 force
playsound block.respawn_anchor.deplete player @a ~ ~ ~ 1 1 0

scoreboard players reset @s energy_buff
tag @s remove energy_buff
