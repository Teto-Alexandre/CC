## 6ギア相当のバフ
scoreboard players add @s health 60
scoreboard players add @s shoot_speed 18
scoreboard players add @s move_speed 78
scoreboard players add @s norma_damage 120
scoreboard players add @s respawn_acc 60
scoreboard players add @s ink_regen 30
scoreboard players add @s main_eff_acc 30
scoreboard players add @s sub_eff_acc 30
scoreboard players add @s charge_acc 42

particle soul ~ ~0.9 ~ 0.5 0.5 0.5 0.1 40 force
particle soul_fire_flame ~ ~0.9 ~ 0.5 0.5 0.5 0.1 40 force
playsound entity.zombie_villager.cure player @a ~ ~ ~ 1 0.8 0
playsound block.respawn_anchor.deplete player @a ~ ~ ~ 1 1.5 0

tag @s add energy_buff
