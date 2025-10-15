execute as @e[tag=tmw_237_sub] if score @s ui_id = $victim_id ui_id run tag @s add ui_237_sub_explode

gamerule showDeathMessages false
scoreboard players set $Lethal tds_dmg 1
scoreboard players reset @s tds_recent_attacked_by
tag @s add tds_temp_death
execute unless score $module ui_world matches 1 run kill @s
execute if score $module ui_world matches 1 unless score @s module matches 47 run kill @s
execute if score $module ui_world matches 1 if score @s module matches 47 unless score @s ui_dc_delay matches 1.. run function tds:delay/death
execute if score $module ui_world matches 1 if score @s module matches 47 run schedule function tds:delay/ss 1t append
tag @s add deadmans_immune
gamerule showDeathMessages true
