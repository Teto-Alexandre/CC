# 吸収
execute if score $time ui_temp matches 19 run particle happy_villager ~ ~1 ~ 0.4 0.6 0.4 0.3 1 force
particle sweep_attack ~ ~1 ~ 0.4 0.6 0.4 0.3 1 force
tag @s add drain
execute if score $time ui_temp matches 1 if entity @s[tag=tmw237_drained] run tag @s add tmw237.cooldown_skip
execute if score $time ui_temp matches 1 if entity @s[tag=tmw237_drained] run data modify storage ui:temp Effect set value [{id:"resistance",duration:30,amplifier:5b}]
execute if score $time ui_temp matches 1 if entity @s[tag=tmw237_drained] run function ui:tmw/237/misc/giveeffect/
execute if score $time ui_temp matches 1 if entity @s[tag=tmw237_drained] run tag @s remove tmw237_drained