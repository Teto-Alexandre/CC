scoreboard players add @s health 6
scoreboard players add @s health_regen 12
scoreboard players add @s gener_damage 4
scoreboard players add @s ink_regen 2
scoreboard players add @s main_eff_acc 2
scoreboard players add @s sub_eff_acc 2
scoreboard players add @s charge_acc 1

scoreboard players add @s pl_comp_buff 1

scoreboard players remove $count ui_temp 1
execute if score $count ui_temp matches 1.. run function ui:game/pl_comp/2.lp