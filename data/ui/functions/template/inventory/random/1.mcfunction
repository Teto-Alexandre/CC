scoreboard players set $mod ui_calc1 106
function ui:common/rand
function ui:template/inventory/random/main_library

scoreboard players set $mod ui_calc1 6
function ui:common/rand
#execute store result storage ui:common input.Item.tag.tmw.gun.now.QFType int 1 run scoreboard players operation $qf ui_temp = $rand ui_calc1
execute if score $rand ui_calc1 matches 0..2 run data modify storage ui:common input.Item.tag.tmw.gun.now.QFType set value 1
execute if score $rand ui_calc1 matches 3..4 run data modify storage ui:common input.Item.tag.tmw.gun.now.QFType set value 2
execute if score $rand ui_calc1 matches 5 run data modify storage ui:common input.Item.tag.tmw.gun.now.QFType set value 3
scoreboard players operation $qf ui_temp = $rand ui_calc1

execute if score $qf ui_temp matches 0..2 run function ui:template/inventory/random/sub_library
execute if score $qf ui_temp matches 0..2 run function ui:template/inventory/random/sp_library

execute if score $qf ui_temp matches 3..4 run function ui:template/inventory/random/sub_library
execute if score $qf ui_temp matches 3..4 run function ui:template/inventory/random/dub_sub_library

execute if score $qf ui_temp matches 5 run function ui:template/inventory/random/sp_library
execute if score $qf ui_temp matches 5 run function ui:template/inventory/random/dub_sp_library
