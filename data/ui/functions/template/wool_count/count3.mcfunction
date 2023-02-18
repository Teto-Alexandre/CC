execute if block ~ ~ ~ light_blue_wool run scoreboard players add $blue wool_count 1
execute if block ~ ~ ~ pink_wool run scoreboard players add $red wool_count 1
execute if block ~ ~ ~ yellow_wool run scoreboard players add $yellow wool_count 1
execute if block ~ ~ ~ lime_wool run scoreboard players add $green wool_count 1
execute if block ~ ~ ~ #ui:wools run scoreboard players add $wool wool_count 1
execute if score $default_color ui_temp matches 0 if block ~ ~ ~ #ui:wools_include_black run setblock ~ ~ ~ white_wool
execute if score $default_color ui_temp matches 1 if block ~ ~ ~ #ui:wools_include_black run setblock ~ ~ ~ light_gray_wool
execute if score $default_color ui_temp matches 2 if block ~ ~ ~ #ui:wools_include_black run setblock ~ ~ ~ gray_wool
execute if score $default_color ui_temp matches 3 if block ~ ~ ~ #ui:wools_include_black run setblock ~ ~ ~ gray_wool
execute if score $default_color ui_temp matches 4 if block ~ ~ ~ #ui:wools_include_black run setblock ~ ~ ~ green_wool
execute if score $default_color ui_temp matches 5 if block ~ ~ ~ #ui:wools_include_black run setblock ~ ~ ~ brown_wool
particle dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1 force
teleport @s ~ ~ ~1
scoreboard players add @s ui_is 1
execute if score @s ui_is > #count_z wool_count run kill @s