# 回復を行う

#
effect give @s regeneration 3 3 true

#
scoreboard players operation @s health_regen_temp += @s health_regen
execute if score @s health_regen_temp matches 1000.. run function ui:tmw/237/constant/regen/plus
