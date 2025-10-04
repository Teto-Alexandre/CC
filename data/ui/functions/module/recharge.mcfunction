data modify storage ui:gun temp set from entity @s SelectedItem.tag.tmw.gun
function ui:tmw/237/misc/set_base_data
execute unless score $bursttype ui_temp matches 12 store result score $ishold ui_temp run data get storage ui:gun temp.BurstMax
execute if score $bursttype ui_temp matches 12 run scoreboard players add $multibullet ui_temp 1

#tellraw @a [{"text":"[Recycle] Burst:"},{"score":{"objective":"ui_temp","name":"$burst"}}]

function ui:tmw/237/changed/core
particle minecraft:wax_on ~ ~1 ~ 0.6 0.4 0.6 1 10
particle minecraft:electric_spark ~ ~1 ~ 0.6 0.4 0.6 1 10
particle minecraft:flash ~ ~1 ~ 0 0 0 0 0
playsound entity.zombie.attack_iron_door player @s ~ ~ ~ 1.5 0.8 0