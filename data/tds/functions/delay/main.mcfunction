scoreboard players remove @s ui_dc_delay 1
execute if score @s ui_dc_delay matches 0 run playsound entity.player.hurt_sweet_berry_bush player @a ~ ~ ~ 1.5 0.5 0
execute if score @s ui_dc_delay matches 0 run particle dust 0 0.6 0 1 ~ ~0.9 ~ 0.5 0.5 0.5 0 50 force
execute if score @s ui_dc_delay matches 0 run gamerule showDeathMessages false
execute if score @s ui_dc_delay matches 0 if entity @s[gamemode=!spectator] run kill @s
execute if score @s ui_dc_delay matches 0 run gamerule showDeathMessages true
execute if score @s ui_dc_delay matches 0 run scoreboard players reset @s ui_dc_delay
particle dust 0 0.6 0 1 ~ ~0.9 ~ 0.3 0.4 0.3 0 2 force