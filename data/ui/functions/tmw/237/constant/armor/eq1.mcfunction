# 青
item replace entity @s armor.feet with leather_boots{display:{color:8247039},AttributeModifiers:[{AttributeName:"generic.armor",Name:"none",Amount:0,Operation:0,UUID:[I;3,1,5,4],Slot:"head"}]}
item replace entity @s armor.legs with leather_leggings{display:{color:8247039},AttributeModifiers:[{AttributeName:"generic.armor",Name:"none",Amount:0,Operation:0,UUID:[I;3,1,5,3],Slot:"head"}]}
item replace entity @s armor.chest with leather_chestplate{display:{color:8247039},AttributeModifiers:[{AttributeName:"generic.armor",Name:"none",Amount:0,Operation:0,UUID:[I;3,1,5,2],Slot:"head"}]}
item replace entity @s armor.head with leather_helmet{display:{color:8247039},AttributeModifiers:[{AttributeName:"generic.armor",Name:"none",Amount:0,Operation:0,UUID:[I;3,1,5,1],Slot:"head"}]}

execute if score $module ui_world matches 1 if score @s module matches 44 run function ui:tmw/237/constant/armor/kigurumi
execute if score $module ui_world matches 1 if score @s module matches 45 run function ui:tmw/237/constant/armor/none