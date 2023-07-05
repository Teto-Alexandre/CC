## データを切削する

# 数値IDでなかったら数値に変換
scoreboard players reset $potionId ui_temp
function ui:tmw/237/misc/giveeffect/2.string_to_number
execute unless score $potionId ui_temp matches 1.. store result score $potionId ui_temp run data get storage ui:temp Effect[0].Id

# 計算し適応
data modify storage ui:temp _ set from storage ui:temp Effect[0]
execute store result storage ui:temp _.Id int 1 run scoreboard players get $potionId ui_temp

    # アンチマーカーシステム
    execute if score @s module matches 19 if score $potionId ui_temp matches 12 store result score $duration ui_temp run data get storage ui:temp _.Duration
    execute if score @s module matches 19 if score $potionId ui_temp matches 12 run scoreboard players operation $duration ui_temp /= #2 ui_num
    execute if score @s module matches 19 if score $potionId ui_temp matches 12 store result storage ui:temp _.Duration int 1 run scoreboard players get $duration ui_temp
    execute if score @s module matches 19 if score $potionId ui_temp matches 24 store result score $duration ui_temp run data get storage ui:temp _.Duration
    execute if score @s module matches 19 if score $potionId ui_temp matches 24 run scoreboard players operation $duration ui_temp /= #2 ui_num
    execute if score @s module matches 19 if score $potionId ui_temp matches 24 store result storage ui:temp _.Duration int 1 run scoreboard players get $duration ui_temp

    # 壊れた時計
    execute if score @s module matches 40 store result score $duration ui_temp run data get storage ui:temp _.Duration
    execute if score @s module matches 40 run scoreboard players operation $duration ui_temp *= #15 ui_num
    execute if score @s module matches 40 run scoreboard players operation $duration ui_temp /= #10 ui_num
    execute if score @s module matches 40 store result storage ui:temp _.Duration int 1 run scoreboard players get $duration ui_temp

data modify storage ui:temp Output[] append from storage ui:temp _

# 削除し再起
data remove storage ui:temp _
data remove storage ui:temp Effect[0]
scoreboard players remove $num ui_temp 1

execute if score $num ui_temp matches 1.. run function ui:tmw/237/misc/giveeffect/1.burn