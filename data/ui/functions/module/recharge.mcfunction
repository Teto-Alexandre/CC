data modify storage ui:gun temp set from entity @s SelectedItem.tag.tmw.gun
function ui:tmw/237/misc/set_base_data
execute store result score $ishold ui_temp run data get storage ui:gun temp.BurstMax

#tellraw @a [{"text":"[Recycle] Burst:"},{"score":{"objective":"ui_temp","name":"$burst"}}]

function ui:tmw/237/changed/core
particle minecraft:wax_on ~ ~1 ~ 0.6 0.4 0.6 1 8
playsound minecraft:entity.fishing_bobber.retrieve player @s ~ ~ ~ 1 0 0