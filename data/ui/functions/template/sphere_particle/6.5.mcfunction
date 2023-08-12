#> ui:template/sphere_particle/6.5
#
# 半径6.5の球形パーティクルベースを展開する
#
# @public

kill @e[tag=ui_temp_particle]

scoreboard players set $temp ui_temp 14
execute align xyz positioned ~-7 ~-7 ~-7 run function ui:template/sphere_particle/place/gen

kill @e[tag=ui_temp_particle,distance=6.6..]