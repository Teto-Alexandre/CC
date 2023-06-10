# シールドの処理
tag @s[tag=shield.breaked] remove shield.breaked
tag @s[tag=shield.repair] remove shield.repair

execute if score @s[tag=!shield.break] armor matches 1.. if score $temp ui_temp matches 1.. run function ui:entity/damage/shield_hit

scoreboard players operation @s armor += @s charge_acc
execute if score @s armor > @s armor_old run tag @s[tag=shield.break] add shield.repair
execute if score @s armor > @s armor_old run tag @s remove shield.break
scoreboard players operation @s armor < @s armor_old