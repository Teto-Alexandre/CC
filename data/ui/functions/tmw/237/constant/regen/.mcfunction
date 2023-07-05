# 回復を行う

#
data modify storage ui:temp Effect set value [{Id:"regeneration",Duration:60,Amplifier:3b,ShowParticles:0b}]
function ui:tmw/237/misc/giveeffect/

#
scoreboard players operation @s health_regen_temp += @s health_regen
execute if score @s health_regen_temp matches 1000.. run function ui:tmw/237/constant/regen/plus
