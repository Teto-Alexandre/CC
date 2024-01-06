data modify storage ui:temp Effect append value [{id:"instant_health",duration:20,amplifier:0b,show_particles:0b}]
scoreboard players remove @s health_regen_temp 1000
execute if score @s health_regen_temp matches 1000.. run data modify storage ui:temp Effect[1].amplifier set value 1b
execute if score @s health_regen_temp matches 1000.. run scoreboard players remove @s health_regen_temp 1000
execute if score @s health_regen_temp matches 2000.. run data modify storage ui:temp Effect[1].amplifier set value 2b
execute if score @s health_regen_temp matches 2000.. run scoreboard players remove @s health_regen_temp 2000
execute if score @s health_regen_temp matches 4000.. run data modify storage ui:temp Effect[1].amplifier set value 3b
execute if score @s health_regen_temp matches 4000.. run scoreboard players remove @s health_regen_temp 4000
execute if score @s health_regen_temp matches 8000.. run data modify storage ui:temp Effect[1].amplifier set value 4b
execute if score @s health_regen_temp matches 8000.. run scoreboard players remove @s health_regen_temp 8000