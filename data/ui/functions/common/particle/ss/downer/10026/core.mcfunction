#

#
execute if score $is ui_temp matches 1..11 run particle flash ~ ~1.5 ~ 2.5 2.5 2.5 0 1 force
execute if score $is ui_temp matches 7 run playsound entity.generic.explode player @a ~ ~1.5 ~ 1.5 0.5 0
execute if score $is ui_temp matches 9 run playsound entity.generic.explode player @a ~ ~1.5 ~ 1.5 0.5 0
execute if score $is ui_temp matches 11 run playsound entity.generic.explode player @a ~ ~1.5 ~ 1.5 0.5 0
execute if score $is ui_temp matches 11.. run kill @s