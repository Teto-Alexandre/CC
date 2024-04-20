execute if score $temp ui_temp matches 1 run scoreboard players add @s health 10
execute if score $temp ui_temp matches 2 run scoreboard players add @s shoot_speed 3
execute if score $temp ui_temp matches 3 run scoreboard players add @s move_speed 6
execute if score $temp ui_temp matches 4 run scoreboard players add @s blast_protection 2
execute if score $temp ui_temp matches 5 run scoreboard players add @s norma_damage 20
execute if score $temp ui_temp matches 6 run scoreboard players add @s sub_damage 3
execute if score $temp ui_temp matches 7 run scoreboard players add @s vsobj_damage 15
execute if score $temp ui_temp matches 8 run scoreboard players add @s blast_damage 4
execute if score $temp ui_temp matches 9 run scoreboard players add @s respawn_acc 10
execute if score $temp ui_temp matches 10 run scoreboard players add @s death_sp 5
execute if score $temp ui_temp matches 11 run scoreboard players add @s sp_need_acc 5
execute if score $temp ui_temp matches 12 run scoreboard players add @s ink_regen 5
execute if score $temp ui_temp matches 13 run scoreboard players add @s main_eff_acc 5
execute if score $temp ui_temp matches 14 run scoreboard players add @s sub_eff_acc 5
execute if score $temp ui_temp matches 15 run scoreboard players add @s charge_acc 5
execute if score $temp ui_temp matches 16 run scoreboard players add @s health_regen 10

scoreboard players operation @s health < #90 ui_num
scoreboard players operation @s shoot_speed < #27 ui_num
scoreboard players operation @s move_speed < #54 ui_num
scoreboard players operation @s blast_protection < #18 ui_num
scoreboard players operation @s norma_damage < #180 ui_num
scoreboard players operation @s sub_damage < #27 ui_num
scoreboard players operation @s vsobj_damage < #135 ui_num
scoreboard players operation @s blast_damage < #36 ui_num
scoreboard players operation @s respawn_acc < #90 ui_num
scoreboard players operation @s death_sp < #45 ui_num
scoreboard players operation @s sp_need_acc < #45 ui_num
scoreboard players operation @s ink_regen < #45 ui_num
scoreboard players operation @s main_eff_acc < #45 ui_num
scoreboard players operation @s sub_eff_acc < #45 ui_num
scoreboard players operation @s charge_acc < #45 ui_num
scoreboard players operation @s health_regen < #90 ui_num