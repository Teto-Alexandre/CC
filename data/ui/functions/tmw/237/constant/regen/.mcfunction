# 回復を行う

#
data modify storage ui:temp Effect set value [{id:"regeneration",duration:60,amplifier:3b,show_particles:0b}]

#
scoreboard players operation @s health_regen_temp += @s health_regen
execute if score @s health_regen_temp matches 1000.. run function ui:tmw/237/constant/regen/plus

function ui:tmw/237/misc/giveeffect/