gamerule showDeathMessages false
scoreboard players set $Lethal tds_dmg 1
scoreboard players reset @s tds_recent_attacked_by
tag @s add tds_temp_death
kill @s
gamerule showDeathMessages true