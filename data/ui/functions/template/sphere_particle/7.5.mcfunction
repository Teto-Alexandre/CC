#> ui:template/sphere_particle/7
#
# 半径7の球形パーティクルベースを展開する
#
# @public

kill @e[tag=ui_temp_particle]

scoreboard players set $temp ui_temp 16
execute align xyz positioned ~-8 ~-8 ~-8 run function ui:template/sphere_particle/place/gen

kill @e[tag=ui_temp_particle,distance=7.6..]