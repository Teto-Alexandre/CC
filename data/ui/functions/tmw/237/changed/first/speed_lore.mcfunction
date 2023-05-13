# サブスペ1 - データ整列

# 初期値
data modify storage ui:temp temp.Name set value "基礎移動速度 100%"

#
execute if score $speed ui_temp matches 10 run data modify storage ui:temp temp.Name set value "基礎移動速度 110%"
execute if score $speed ui_temp matches 20 run data modify storage ui:temp temp.Name set value "基礎移動速度 120%"
execute if score $speed ui_temp matches 30 run data modify storage ui:temp temp.Name set value "基礎移動速度 130%"

#
execute if score $speed ui_temp matches -10 run data modify storage ui:temp temp.Name set value "基礎移動速度 90%"
execute if score $speed ui_temp matches -20 run data modify storage ui:temp temp.Name set value "基礎移動速度 80%"
execute if score $speed ui_temp matches -30 run data modify storage ui:temp temp.Name set value "基礎移動速度 70%"

# 書き込み
item modify entity @s weapon.mainhand ui:gun/value/lore