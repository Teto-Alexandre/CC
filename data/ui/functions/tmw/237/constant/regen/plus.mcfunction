data modify storage ui:temp Effect set value [{Id:"instant_health",Duration:20,Amplifier:0b,ShowParticles:0b}]
function ui:tmw/237/misc/giveeffect/
scoreboard players remove @s health_regen_temp 1000
execute if score @s health_regen_temp matches 1000.. run data modify storage ui:temp Effect set value [{Id:"instant_health",Duration:20,Amplifier:1b,ShowParticles:0b}]
execute if score @s health_regen_temp matches 1000.. run function ui:tmw/237/misc/giveeffect/
execute if score @s health_regen_temp matches 1000.. run scoreboard players remove @s health_regen_temp 1000
execute if score @s health_regen_temp matches 2000.. run data modify storage ui:temp Effect set value [{Id:"instant_health",Duration:20,Amplifier:2b,ShowParticles:0b}]
execute if score @s health_regen_temp matches 2000.. run function ui:tmw/237/misc/giveeffect/
execute if score @s health_regen_temp matches 2000.. run scoreboard players remove @s health_regen_temp 2000
execute if score @s health_regen_temp matches 4000.. run data modify storage ui:temp Effect set value [{Id:"instant_health",Duration:20,Amplifier:3b,ShowParticles:0b}]
execute if score @s health_regen_temp matches 5000.. run function ui:tmw/237/misc/giveeffect/
execute if score @s health_regen_temp matches 4000.. run scoreboard players remove @s health_regen_temp 4000
execute if score @s health_regen_temp matches 8000.. run data modify storage ui:temp Effect set value [{Id:"instant_health",Duration:20,Amplifier:4b,ShowParticles:0b}]
execute if score @s health_regen_temp matches 8000.. run function ui:tmw/237/misc/giveeffect/
execute if score @s health_regen_temp matches 8000.. run scoreboard players remove @s health_regen_temp 8000