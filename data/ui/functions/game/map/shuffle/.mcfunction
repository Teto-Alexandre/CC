data modify storage ui:map temp_maps2 set from storage ui:map maps

# 絞り込みをする
execute if data storage ui:map temp_maps2[0] run function ui:game/map/shuffle/1.burn

# ランダムに一個選ぶ
execute store result score $mod ui_calc1 run data get storage ui:map temp_maps
function ui:common/rand
execute if score $rand ui_calc1 matches 2.. run function ui:game/map/shuffle/2.rand

#
data modify storage ui:map map set from storage ui:map temp_maps[0]

data remove storage ui:map temp_maps
data remove storage ui:map temp_maps2
