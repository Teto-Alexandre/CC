execute store result score $ink ui_temp run data get storage ui:gun temp.now.Ink
execute store result score $ink.max ui_temp run data get storage ui:gun temp.InkMax
execute if score $module ui_world matches 1 as @a if score @s module matches 16 run function ui:module/eco_bag
execute store result score $spneed ui_temp run data get storage ui:gun temp.SPNeed
scoreboard players operation $spneed ui_temp *= #100 ui_num
scoreboard players operation $spneed ui_temp /= @s sp_need_acc
execute store result score $ink.m ui_temp run data get storage ui:gun temp.MoveInkRegen
execute store result score $ink.s ui_temp run data get storage ui:gun temp.ShootInkRegen
execute store result score $cooltime ui_temp run data get storage ui:gun temp.now.CT
execute store result score $subtype ui_temp run data get storage ui:gun temp.SubType
execute store result score $subtime ui_temp run data get storage ui:gun temp.now.SubTime
execute store result score $subtime.max ui_temp run data get storage ui:gun temp.SubTime
execute store result score $sp ui_temp run data get storage ui:gun temp.now.SP
execute store result score $sptype ui_temp run data get storage ui:gun temp.SPType
execute store result score $sptime ui_temp run data get storage ui:gun temp.now.SPTime
execute store result score $sptime.max ui_temp run data get storage ui:gun temp.SPTime
execute store result score $amp ui_temp run data get storage ui:gun temp.now.Amp
execute store result score $qf ui_temp run data get storage ui:gun temp.now.QFType
execute store result score $lasttime ui_temp run data get storage ui:gun temp.now.Time