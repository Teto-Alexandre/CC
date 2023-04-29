execute unless score $sp_fusion party_mode matches 1 as @a if score @s random_main matches 3 run scoreboard players set @s random_main 0

execute unless score @s random_main matches 1.. run function ui:template/inventory/random/main_library
execute if score @s random_main matches 1 run function ui:template/inventory/random/main_library_eld
execute if score @s random_main matches 2 run function ui:template/inventory/random/main_library_model
execute if score @s random_main matches 3 run function ui:template/inventory/random/main_library_bug

scoreboard players set $mod ui_calc1 6
function ui:common/rand
execute if score @s random_qf matches 1 run scoreboard players set $rand ui_calc1 0
execute if score @s random_qf matches 2 run scoreboard players set $rand ui_calc1 3
execute if score @s random_qf matches 3 run scoreboard players set $rand ui_calc1 5
execute if score @s random_main matches 3 run scoreboard players set $rand ui_calc1 5

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

execute if score @s random_main matches 3 run function ui:template/inventory/random/bug_sp_library
execute if score @s random_main matches 3 run function ui:template/inventory/random/bug_dub_sp_library
