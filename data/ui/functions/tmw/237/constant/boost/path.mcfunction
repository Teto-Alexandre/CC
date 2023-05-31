scoreboard players set $success ui_temp 0

execute if score $module ui_world matches 1 if score @s module matches 31 run function ui:tmw/237/constant/boost/jet
execute unless score $success ui_temp matches 1.. run function ui:tmw/237/constant/boost/boost