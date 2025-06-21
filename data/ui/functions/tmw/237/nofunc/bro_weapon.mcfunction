#
data modify storage tds: temp.WeaponName set value "NULL"
data modify storage tds: temp.SubWeaponName set value "NULL"
data modify storage tds: temp.SPWeaponName set value "NULL"

#
execute store result score $type ui_temp run data get entity @s Inventory[{Slot:0b}].tag.tmw.gun.SubType
function ui:tmw/237/nofunc/subsp
data modify storage tds: temp.SubWeaponName set from storage ui:temp temp.Name
execute store result score $type ui_temp run data get entity @s Inventory[{Slot:0b}].tag.tmw.gun.SPType
function ui:tmw/237/nofunc/subsp
data modify storage tds: temp.SPWeaponName set from storage ui:temp temp.Name

#
data modify storage tds: temp.WeaponName set from entity @s Inventory[{Slot:0b}].tag.tmw.gun.Name
#data modify storage tds: temp.SubWeaponName set from entity @s Inventory[{Slot:0b}].tag.tmw.gun.SubName
#data modify storage tds: temp.SPWeaponName set from entity @s Inventory[{Slot:0b}].tag.tmw.gun.SPName
execute if entity @s[tag=!tmw_237_random] run tellraw @a ["",{"selector":"@s"},{"text":" : ","color":"gray"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":false},{"text":", ","color":"white"},{"storage":"tds:","nbt":"temp.SubWeaponName","interpret":false},{"text":", ","color":"white"},{"storage":"tds:","nbt":"temp.SPWeaponName","interpret":false}]
execute if entity @s[tag=tmw_237_random] unless score @s random_main matches 3 run tellraw @a ["",{"selector":"@s"},{"text":"[","color":"white"},{"text":"R","color":"green"},{"text":"]","color":"white"},{"text":" : ","color":"gray"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":false},{"text":", ","color":"white"},{"storage":"tds:","nbt":"temp.SubWeaponName","interpret":false},{"text":", ","color":"white"},{"storage":"tds:","nbt":"temp.SPWeaponName","interpret":false}]
execute if entity @s[tag=tmw_237_random] if score @s random_main matches 3 run tellraw @a ["",{"selector":"@s"},{"text":"[","color":"white"},{"text":"F","color":"light_purple"},{"text":"]","color":"white"},{"text":" : ","color":"gray"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":false},{"text":", ","color":"white"},{"storage":"tds:","nbt":"temp.SubWeaponName","interpret":false},{"text":", ","color":"white"},{"storage":"tds:","nbt":"temp.SPWeaponName","interpret":false}]
execute if data storage tds: temp{SubWeaponName:"ERROR"} if data storage tds: temp{SPWeaponName:"ERROR"} if entity @s[advancements={ui:add/basic/qf_none=false}] run advancement grant @s only ui:add/basic/qf_none

#
execute if score $secondary ui_world matches 1 store result score $type ui_temp run data get entity @s Inventory[{Slot:1b}].tag.tmw.gun.SubType
execute if score $secondary ui_world matches 1 run function ui:tmw/237/nofunc/subsp
execute if score $secondary ui_world matches 1 run data modify storage tds: temp.SubWeaponName set from storage ui:temp temp.Name
execute if score $secondary ui_world matches 1 store result score $type ui_temp run data get entity @s Inventory[{Slot:1b}].tag.tmw.gun.SPType
execute if score $secondary ui_world matches 1 run function ui:tmw/237/nofunc/subsp
execute if score $secondary ui_world matches 1 run data modify storage tds: temp.SPWeaponName set from storage ui:temp temp.Name

#
execute if score $secondary ui_world matches 1 run data modify storage tds: temp.WeaponName set value "NULL"
#execute if score $secondary ui_world matches 1 run data modify storage tds: temp.SubWeaponName set value "NULL"
#execute if score $secondary ui_world matches 1 run data modify storage tds: temp.SPWeaponName set value "NULL"
execute if score $secondary ui_world matches 1 run data modify storage tds: temp.WeaponName set from entity @s Inventory[{Slot:1b}].tag.tmw.gun.Name
execute if score $secondary ui_world matches 1 run data modify storage tds: temp.SubWeaponName set from entity @s Inventory[{Slot:1b}].tag.tmw.gun.SubName
execute if score $secondary ui_world matches 1 run data modify storage tds: temp.SPWeaponName set from entity @s Inventory[{Slot:1b}].tag.tmw.gun.SPName
execute if score $secondary ui_world matches 1 run tellraw @a ["",{"text":" - [Sec]","color":"white"},{"text":" : ","color":"gray"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":false},{"text":", ","color":"white"},{"storage":"tds:","nbt":"temp.SubWeaponName","interpret":false},{"text":", ","color":"white"},{"storage":"tds:","nbt":"temp.SPWeaponName","interpret":false}]

#
data remove storage tds: temp.WeaponName
data remove storage tds: temp.SubWeaponName
data remove storage tds: temp.SPWeaponName

#
execute unless score $module ui_world matches 1 unless score $gear_off party_mode matches 1 run function ui:tmw/237/nofunc/bro_gear
execute if score $module ui_world matches 1 if score $gear_off party_mode matches 1 run function ui:tmw/237/nofunc/bro_module
execute if score $module ui_world matches 1 unless score $gear_off party_mode matches 1 run function ui:tmw/237/nofunc/bro_m_a_g
