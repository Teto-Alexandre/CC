data modify storage ui:map temp_maps2 set from storage ui:map maps

# 絞り込みをする
execute if data storage ui:map temp_maps2[0] run function ui:game/map/shuffle/1.burn

# ランダムに一個選ぶ
execute store result score $mod ui_calc1 run data get storage ui:map temp_maps
function ui:common/rand
execute if score $map_debug ui_temp matches 0.. run scoreboard players operation $rand ui_calc1 = $map_debug ui_temp
execute if score $map_debug ui_temp matches 0.. run scoreboard players reset $map_debug ui_temp
#tellraw @a [{"text":"Mode:"},{"storage":"ui:map","nbt":"mode"},{"text":" Total:"},{"score":{"name": "$mod","objective": "ui_calc1"}},{"text":" Rand:"},{"score":{"name": "$rand","objective": "ui_calc1"}}]
execute if score $rand ui_calc1 matches 1.. run function ui:game/map/shuffle/2.rand

#
data modify storage ui:map map set from storage ui:map temp_maps[0]

data remove storage ui:map temp_maps
data remove storage ui:map temp_maps2
