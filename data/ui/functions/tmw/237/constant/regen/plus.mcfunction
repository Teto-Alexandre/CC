data modify storage ui:temp Effect append value [{Id:"instant_health",Duration:20,Amplifier:0b,ShowParticles:0b}]
scoreboard players remove @s health_regen_temp 1000
execute if score @s health_regen_temp matches 1000.. run data modify storage ui:temp Effect[1].Amplifier set value 1b
execute if score @s health_regen_temp matches 1000.. run scoreboard players remove @s health_regen_temp 1000
execute if score @s health_regen_temp matches 2000.. run data modify storage ui:temp Effect[1].Amplifier set value 2b
execute if score @s health_regen_temp matches 2000.. run scoreboard players remove @s health_regen_temp 2000
execute if score @s health_regen_temp matches 4000.. run data modify storage ui:temp Effect[1].Amplifier set value 3b
execute if score @s health_regen_temp matches 4000.. run scoreboard players remove @s health_regen_temp 4000
execute if score @s health_regen_temp matches 8000.. run data modify storage ui:temp Effect[1].Amplifier set value 4b
execute if score @s health_regen_temp matches 8000.. run scoreboard players remove @s health_regen_temp 8000