effect give @s minecraft:instant_health 1 0 true
scoreboard players remove @s health_regen_temp 1000
execute if score @s health_regen_temp matches 1000.. run effect give @s minecraft:instant_health 1 1 true
execute if score @s health_regen_temp matches 1000.. run scoreboard players remove @s health_regen_temp 1000
execute if score @s health_regen_temp matches 2000.. run effect give @s minecraft:instant_health 1 2 true
execute if score @s health_regen_temp matches 2000.. run scoreboard players remove @s health_regen_temp 2000
execute if score @s health_regen_temp matches 4000.. run effect give @s minecraft:instant_health 1 3 true
execute if score @s health_regen_temp matches 4000.. run scoreboard players remove @s health_regen_temp 4000
execute if score @s health_regen_temp matches 8000.. run effect give @s minecraft:instant_health 1 4 true
execute if score @s health_regen_temp matches 8000.. run scoreboard players remove @s health_regen_temp 8000