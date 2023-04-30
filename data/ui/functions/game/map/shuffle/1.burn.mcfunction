# 条件に合わせて適合しないものを消す

#
execute if data storage ui:map {mode:"2team"} unless data storage ui:map temp_maps2[0].Asiba run data modify storage ui:map temp_maps append from storage ui:map temp_maps2[0]
execute if data storage ui:map {mode:"4team"} if data storage ui:map temp_maps2[0].4team run data modify storage ui:map temp_maps append from storage ui:map temp_maps2[0]
execute if data storage ui:map {mode:"Asiba"} if data storage ui:map temp_maps2[0].Asiba run data modify storage ui:map temp_maps append from storage ui:map temp_maps2[0]

#
data remove storage ui:map temp_maps2[0]

# 再帰
execute if data storage ui:map temp_maps2[0] run function ui:game/map/shuffle/1.burn
