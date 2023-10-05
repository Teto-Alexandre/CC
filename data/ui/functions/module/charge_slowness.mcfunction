execute if score $bursttype ui_temp matches 4 if score @s[scores={ui_use2=1..}] ui_use2 < $burst.max ui_temp run tag @s add speed_remove_temp
execute if score $bursttype ui_temp matches 4 if score @s[scores={ui_use2=1..}] ui_use2 >= $burst.max ui_temp run tag @s add speed_remove_temp2

execute if score $bursttype ui_temp matches 8 if score $ishold ui_temp matches 1.. if score $ishold ui_temp <= $burst.max ui_temp run tag @s add speed_remove_temp
execute if score $bursttype ui_temp matches 8 unless score $ishold ui_temp <= $burst.max ui_temp run tag @s add speed_remove_temp2

execute if score $bursttype ui_temp matches 12 unless score $multibullet ui_temp matches 1.. if score $ishold ui_temp matches 2.. if score $ishold ui_temp <= $burst.max ui_temp run tag @s add speed_remove_temp
execute if score $bursttype ui_temp matches 12 if score $multibullet ui_temp matches 1.. run tag @s add speed_remove_temp2


execute if entity @s[tag=speed_remove_temp] run scoreboard players remove @s wep_speed 15
execute if entity @s[tag=speed_remove_temp2] run scoreboard players remove @s wep_speed 30
execute unless entity @s[tag=!speed_remove_temp,tag=!speed_remove_temp2] if entity @s[tag=speedtype_shoot] run function ui:template/stats/shoot_speed
execute unless entity @s[tag=!speed_remove_temp,tag=!speed_remove_temp2] if entity @s[tag=speedtype_move] run function ui:template/stats/move_speed
execute unless entity @s[tag=!speed_remove_temp,tag=!speed_remove_temp2] run tag @s add tmw237_module_51

execute if entity @s[tag=!speed_remove_temp,tag=!speed_remove_temp2,tag=tmw237_module_51] if entity @s[tag=speedtype_shoot] run function ui:template/stats/shoot_speed
execute if entity @s[tag=!speed_remove_temp,tag=!speed_remove_temp2,tag=tmw237_module_51] if entity @s[tag=speedtype_move] run function ui:template/stats/move_speed
execute if entity @s[tag=!speed_remove_temp,tag=!speed_remove_temp2,tag=tmw237_module_51] run tag @s remove tmw237_module_51

tag @s[tag=speed_remove_temp] remove speed_remove_temp
tag @s[tag=speed_remove_temp2] remove speed_remove_temp2