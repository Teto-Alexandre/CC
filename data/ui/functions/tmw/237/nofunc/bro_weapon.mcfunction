#
data modify storage tds: temp.WeaponName set from entity @s SelectedItem.tag.tmw.gun.Name
data modify storage tds: temp.SubWeaponName set from entity @s SelectedItem.tag.tmw.gun.SubName
data modify storage tds: temp.SPWeaponName set from entity @s SelectedItem.tag.tmw.gun.SPName
tellraw @a ["",{"selector":"@s"},{"text":" : ","color":"gray"},{"storage":"tds:","nbt":"temp.WeaponName","interpret":false},{"text":", ","color":"white"},{"storage":"tds:","nbt":"temp.SubWeaponName","interpret":false},{"text":", ","color":"white"},{"storage":"tds:","nbt":"temp.SPWeaponName","interpret":false}]
