scoreboard players remove @s health 6
scoreboard players remove @s health_regen 12
scoreboard players remove @s norma_damage 4
scoreboard players remove @s ink_regen 1
scoreboard players remove @s main_eff_acc 1
scoreboard players remove @s sub_eff_acc 1

scoreboard players remove $count ui_temp 1
execute if score $count ui_temp matches 1.. run function ui:game/pl_comp/before/2.lp