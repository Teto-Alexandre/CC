## データを切削する

# データを取得、仕分けして仮置きストレージに分別する
execute store result score $temp ui_temp run data get storage ui:gear temp.Reader[0].id

#tellraw @s {"score":{"name": "$temp","objective": "ui_temp"}}

#
execute if score $temp ui_temp matches 1 run scoreboard players add @s health 10
execute if score $temp ui_temp matches 2 run scoreboard players add @s shoot_speed 3
execute if score $temp ui_temp matches 3 run scoreboard players add @s move_speed 35
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
execute if score $temp ui_temp matches 15 run scoreboard players add @s charge_acc 7

# 取得した場所を削除し再起
data remove storage ui:gear temp.Reader[0]
scoreboard players remove $count ui_temp 1

execute if score $count ui_temp matches 1.. run function ui:tmw/243/core/gear_reader/1.burn
