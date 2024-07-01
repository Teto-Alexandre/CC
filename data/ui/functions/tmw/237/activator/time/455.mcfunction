# ジェットパック
scoreboard players set $temp ui_temp 0
execute if block ~ ~-1 ~ #ui:nocol_water if block ~ ~-2 ~ #ui:nocol_water if block ~ ~-3 ~ #ui:nocol_water if block ~ ~-4 ~ #ui:nocol_water if block ~ ~-5 ~ #ui:nocol_water if block ~ ~-6 ~ #ui:nocol_water if block ~ ~-7 ~ #ui:nocol_water if block ~ ~-8 ~ #ui:nocol_water if block ~ ~-9 ~ #ui:nocol_water run scoreboard players set $temp ui_temp 1
execute if score $temp ui_temp matches 0 run data modify storage ui:temp Effect set value [{id:"levitation",duration:20,amplifier:9b,show_particles:0b}]
execute if score $temp ui_temp matches 0 run function ui:tmw/237/misc/giveeffect/
execute if score $temp ui_temp matches 1 run effect clear @s levitation
execute if score $time ui_temp matches 5..6 run data modify storage ui:temp Effect set value [{id:"levitation",duration:20,amplifier:49b,show_particles:0b}]
execute if score $time ui_temp matches 5..6 run function ui:tmw/237/misc/giveeffect/
execute if score $time ui_temp matches 0..4 run effect clear @s levitation
execute if score $time ui_temp matches 6 run particle cloud ~ ~ ~ 0.2 0.2 0.2 0.05 5 force
execute if score $time ui_temp matches 6 run playsound entity.ender_dragon.flap player @a ~ ~ ~

# ジェット
execute positioned ^0.2 ^ ^ rotated ~-90 87 run function ui:tmw/237/activator/time/455.0
execute positioned ^-0.2 ^ ^ rotated ~90 87 run function ui:tmw/237/activator/time/455.0