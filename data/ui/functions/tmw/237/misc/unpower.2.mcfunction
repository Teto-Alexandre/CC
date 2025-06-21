tp @s ^ ^ ^1.0 ~ ~ 
execute store result score @s ui_dmg run data get storage ui_temp: Unpower.Damage
execute store result score @s ui_br run data get storage ui_temp: Unpower.Range
execute store result score @s ui_gpc run data get storage ui_temp: Unpower.RangeType
execute store result score @s ui_bm run data get storage ui_temp: Unpower.Speed
execute store result score @s ui_bpart run data get storage ui_temp: Unpower.FlyParticle
execute store result score @s ui_hpart run data get storage ui_temp: Unpower.EndParticle
execute store result score @s ui_is run data get storage ui_temp: Unpower.IS
scoreboard players set @s ui_bdt 1
execute if score @s ui_bpart matches 105 run scoreboard players operation @s ui_is = $temp ui_temp
execute if score @s ui_bpart matches 105 run scoreboard players add $temp ui_temp 10
execute if data storage ui_temp: Unpower{Pierce:1b} run tag @s add Pierce
execute if data storage ui_temp: Unpower{Pierce:2b} run tag @s add SuperPierce
data modify entity @s ArmorItems.[0].tag.display.Name set from storage ui_temp: Unpower.Name
data modify entity @s ArmorItems.[0].tag.BulletData set from storage ui_temp: Unpower.BulletData