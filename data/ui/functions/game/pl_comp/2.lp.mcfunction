scoreboard players add @s health 6
scoreboard players add @s norma_damage 4
scoreboard players add @s ink_regen 10
scoreboard players add @s main_eff_acc 10
scoreboard players add @s sub_eff_acc 10

scoreboard players remove $count ui_temp 1
execute if score $count ui_temp matches 1.. run function ui:game/pl_comp/2.lp