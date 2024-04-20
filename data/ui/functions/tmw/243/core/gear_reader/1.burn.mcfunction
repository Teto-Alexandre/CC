## データを切削する

# データを取得、仕分けして仮置きストレージに分別する
execute store result score $temp ui_temp run data get storage ui:gear temp.Reader[0].id

#tellraw @s {"score":{"name": "$temp","objective": "ui_temp"}}

#
function ui:tmw/243/core/gear_reader/2.sum
execute if score $module ui_world matches 1 if score @s module matches 57 run function ui:tmw/243/core/gear_reader/2.sum
execute if score $module ui_world matches 1 if score @s module matches 57 run function ui:tmw/243/core/gear_reader/2.sum

# 取得した場所を削除し再起
data remove storage ui:gear temp.Reader[0]
scoreboard players remove $count ui_temp 1

execute if score $count ui_temp matches 1.. run function ui:tmw/243/core/gear_reader/1.burn
