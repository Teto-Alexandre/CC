function oh_my_dat:please

data modify storage ui:inventory temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inventory
scoreboard players set $count ui_temp 1

clear @s

function ui:template/inventory/pull.lp

data remove storage ui:inventory temp
