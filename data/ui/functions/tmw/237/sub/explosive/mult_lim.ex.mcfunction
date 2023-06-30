# 設置数制限

# 処理終了
execute as @a if score $id ui_temp = @s ui_id run tag @s add mult_player
execute if score $module ui_world matches 1 unless score @a[tag=mult_player,limit=1] module matches 36 run function ui:tmw/237/sub/explosive/mult.ex
execute unless score $module ui_world matches 1 run function ui:tmw/237/sub/explosive/mult.ex
tag @a[tag=mult_player] remove mult_player