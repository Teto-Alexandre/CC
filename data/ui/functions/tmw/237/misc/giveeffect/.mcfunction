## ストレージで設定されたポーション効果を適応する

#
data modify storage little_brewer: Argument set value []
data modify storage ui:temp __ set from storage ui:temp Effect

# カウント
execute store result score $num ui_temp run data get storage ui:temp Effect

# 切削
execute if score $num ui_temp matches 1.. run function ui:tmw/237/misc/giveeffect/1.burn

# 適応
function little_brewer:api/

# 最後に
data modify storage ui:temp Effect set from storage ui:temp __
data remove storage ui:temp __
scoreboard players reset $num ui_temp