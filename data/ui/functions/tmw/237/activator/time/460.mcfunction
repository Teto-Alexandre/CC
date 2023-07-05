# ナイスダマ
data modify storage ui:temp Effect set value [{Id:"resistance",Duration:20,Amplifier:3b,ShowParticles:0b}]
function ui:tmw/237/misc/giveeffect/

scoreboard players set $temp ui_temp 0
execute if block ~ ~-1 ~ #ui:nocol if block ~ ~-2 ~ #ui:nocol if block ~ ~-3 ~ #ui:nocol if block ~ ~-4 ~ #ui:nocol if block ~ ~-5 ~ #ui:nocol if block ~ ~-6 ~ #ui:nocol if block ~ ~-7 ~ #ui:nocol run scoreboard players set $temp ui_temp 1
execute if score $temp ui_temp matches 0 run data modify storage ui:temp Effect set value [{Id:"levitation",Duration:20,Amplifier:5b,ShowParticles:0b}]
execute if score $temp ui_temp matches 0 run function ui:tmw/237/misc/giveeffect/
execute if score $temp ui_temp matches 1 run effect clear @s levitation

execute if score @s ui_use2 matches 19 run particle angry_villager ~ ~ ~ 1 1 1 0 15 force
execute if score @s ui_use2 matches 39 run particle angry_villager ~ ~ ~ 1 1 1 0 15 force
execute if score @s ui_use2 matches 59 run particle angry_villager ~ ~ ~ 1 1 1 0 15 force
execute if score @s ui_use2 matches 19 run playsound entity.zombie_villager.cure player @a ~ ~ ~ 2 2 0
execute if score @s ui_use2 matches 39 run playsound entity.zombie_villager.cure player @a ~ ~ ~ 2 2 0
execute if score @s ui_use2 matches 59 run playsound entity.zombie_villager.cure player @a ~ ~ ~ 2 2 0
execute if score @s ui_use2 matches 59 run playsound entity.zombie_villager.converted player @a ~ ~ ~ 2 1.8 0
execute if score @s ui_use2 matches 60 run particle firework ~ ~ ~ 1 1 1 0.1 2 force