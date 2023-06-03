scoreboard players add @s ui_tmw237_boost 1

scoreboard players operation $boost ui_temp = @s ui_tmw237_boost
scoreboard players remove $boost ui_temp 2

execute if score $boost ui_temp matches 0 run execute store result score $cooltime ui_temp run time query gametime
execute if score $boost ui_temp matches 0 run scoreboard players add $cooltime ui_temp 20
execute if score $boost ui_temp matches 0.. run scoreboard players remove $ink ui_temp 6
execute if score $boost ui_temp matches 5 run scoreboard players remove $ink ui_temp 150
execute if score $boost ui_temp matches 0 run scoreboard players set $changed ui_temp 1

execute if score $boost ui_temp matches 5 run effect give @s levitation 1 6 true
execute if score $boost ui_temp matches 6.. run effect give @s levitation 1 0 true
execute at @s if block ~ ~-1 ~ #ui:nocol_water if block ~ ~-2 ~ #ui:nocol_water if block ~ ~-3 ~ #ui:nocol_water if block ~ ~-4 ~ #ui:nocol_water if block ~ ~-5 ~ #ui:nocol_water if block ~ ~-6 ~ #ui:nocol_water if block ~ ~-7 ~ #ui:nocol_water if block ~ ~-8 ~ #ui:nocol_water run effect clear @s levitation

execute if score $boost ui_temp matches 0 at @s run playsound minecraft:entity.warden.sonic_charge player @a ~ ~ ~ 1 1
execute if score $boost ui_temp matches 0 at @s run playsound block.iron_door.close player @a ~ ~ ~ 1.5 0.5
execute if score $boost ui_temp matches 0 at @s run particle crit ~ ~ ~ 0.5 0.5 0.5 1 50 force
execute if score $boost ui_temp matches 1..4 at @s run particle sweep_attack ~ ~ ~ 0.5 0.5 0.5 0 1 force
execute if score $boost ui_temp matches 0..4 at @s run tp @s @s
execute if score $boost ui_temp matches 5 at @s run playsound entity.generic.explode player @a ~ ~ ~ 1 1
execute if score $boost ui_temp matches 5 at @s run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.5 50 force
execute if score $boost ui_temp matches 5 at @s run particle explosion ~ ~ ~ 0 0 0 0 1 force
execute if score $boost ui_temp matches 5 at @s run tp @s @s
execute if score $boost ui_temp matches 6.. at @s run particle sweep_attack ~ ~ ~ 0.5 0.5 0.5 0 1 force
execute if score $boost ui_temp matches 6.. at @s run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.3 1 force
execute if score $boost ui_temp matches 6.. at @s run particle lava ~ ~ ~ 0.5 0.5 0.5 0.3 1 force

execute as @s[tag=tmw_oh_s] if score $cooltime ui_temp matches 0 run function ui:tmw/237/constant/boost/jet2

scoreboard players set $success ui_temp 1