summon marker ~ ~ ~ {Tags:["ui_18","ui_18_rad7","ui_18_unpower"]}
schedule function ui:ui/18/ss 2t replace

execute as @e[tag=ui_18_unpower] at @s run function ui:template/square_block/15
execute as @e[tag=ui_temp_particle] at @s if block ~ ~ ~ #ui:wools_include_black run scoreboard players add @e[tag=ui_18_unpower] ui_is 1
kill @e[tag=ui_temp_particle]
tag @e[tag=ui_18_unpower] remove ui_18_unpower