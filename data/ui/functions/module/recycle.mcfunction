execute if entity @s[type=player] store result score $victim_ink ui_temp run data get entity @s SelectedItem.tag.tmw.gun.now.Ink
execute if entity @s[type=!player] store result score $victim_ink ui_temp run data get entity @s HandItems[0].tag.tmw.gun.now.Ink
data modify storage ui:gun temp set from entity @p[tag=tds_return_attacker] SelectedItem.tag.tmw.gun
execute as @p[tag=tds_return_attacker] run function ui:tmw/237/misc/set_base_data
scoreboard players operation $ink ui_temp += $victim_ink ui_temp
scoreboard players operation $ink ui_temp < #1000 ui_num
execute as @p[tag=tds_return_attacker] run function ui:tmw/237/changed/core
execute at @p[tag=tds_return_attacker] run playsound minecraft:item.bottle.fill_dragonbreath player @a ~ ~ ~ 1 1.2 0
execute at @p[tag=tds_return_attacker] run playsound minecraft:entity.fish.swim player @a ~ ~ ~ 1 2 0