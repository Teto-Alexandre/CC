# 弾にデータを込める
teleport @s ^ ^ ^1 ~ ~
scoreboard players operation @s ui_bpart = $particle.fly ui_temp
scoreboard players operation @s ui_hpart = $particle.end ui_temp
scoreboard players operation @s ui_bm = $speed ui_temp
scoreboard players operation @s ui_bm += $speed.add ui_temp
scoreboard players operation @s ui_bn = $number ui_temp
scoreboard players operation @s ui_br = $range ui_temp
scoreboard players operation @s ui_gpc = $rangetype ui_temp
scoreboard players operation @s ui_dmg = $damage ui_temp
scoreboard players set @s ui_bdt 1
scoreboard players operation @s ui_id = $id ui_temp
scoreboard players operation @s ui_team = $team ui_temp
execute if score $pierce ui_temp matches 1 run tag @s add Pierce
execute if score $freehitlength ui_temp matches -2147483648..2147483647 run scoreboard players operation @s ui_fhl = $freehitlength ui_temp
execute if score $damage.free ui_temp matches -2147483648..2147483647 run scoreboard players operation @s ui_fhd = $damage.free ui_temp
data modify entity @s ArmorItems.[0].tag.display.Name set from storage ui:gun temp.DisplayName
tag @s remove ui_temp_unpower