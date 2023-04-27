#
scoreboard players remove @s energy_buff 1

#
particle soul_fire_flame ~ ~0.9 ~ 0.5 0.5 0.5 0.03 1 force

#
execute if entity @s[tag=!energy_buff] run function ui:template/stats/energy/get
execute if score @s energy_buff matches 0 run function ui:template/stats/energy/remove
