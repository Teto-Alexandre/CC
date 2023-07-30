execute if entity @s[type=player] store result score $victim_ink ui_temp run data get entity @s SelectedItem.tag.tmw.gun.now.Ink
execute if entity @s[type=!player] store result score $victim_ink ui_temp run data get entity @s HandItems[0].tag.tmw.gun.now.Ink
data modify storage ui:gun temp set from entity @p[tag=tds_return_attacker] SelectedItem.tag.tmw.gun
execute as @p[tag=tds_return_attacker] run function ui:tmw/237/misc/set_base_data
scoreboard players operation $ink ui_temp += $victim_ink ui_temp
scoreboard players operation $ink ui_temp < #1000 ui_num

#tellraw @a [{"text":"[Recycle] Burst:"},{"score":{"objective":"ui_temp","name":"$burst"}}]

execute store result storage ui:gun temp.now.Burst int 1 run scoreboard players get $burst ui_temp
execute store result storage ui:gun temp.now.CT int 1 run scoreboard players get $cooltime ui_temp
execute store result storage ui:gun temp.now.Ink int 1 run scoreboard players get $ink ui_temp
execute unless score $subtime ui_temp matches 1.. run scoreboard players set $subtime ui_temp 0
execute store result storage ui:gun temp.now.SubTime int 1 run scoreboard players get $subtime ui_temp
execute store result storage ui:gun temp.now.SP int 1 run scoreboard players get $sp ui_temp
execute unless score $sptime ui_temp matches 1.. run scoreboard players set $sptime ui_temp 0
execute store result storage ui:gun temp.now.SPTime int 1 run scoreboard players get $sptime ui_temp
execute store result storage ui:gun temp.now.IsHold int 1 run scoreboard players get $ishold ui_temp
#execute store result storage ui:gun temp.now.Charge int 1 run scoreboard players get $charge ui_temp
execute store result storage ui:gun temp.now.Time int 1 run scoreboard players get $lasttime ui_temp
execute store result storage ui:gun temp.now.Amp int 1 run scoreboard players get $amp ui_temp

execute as @p[tag=tds_return_attacker] run function ui:tmw/237/changed/core
execute at @p[tag=tds_return_attacker] run playsound minecraft:item.bottle.fill_dragonbreath player @a ~ ~ ~ 1 1.2 0
execute at @p[tag=tds_return_attacker] run playsound minecraft:entity.fish.swim player @a ~ ~ ~ 1 2 0