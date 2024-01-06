## データを切削する

# 一旦代入
data modify storage ui:temp _.effect set from storage ui:temp Effect[0]

# 計算し適応

    # アンチマーカーシステム
    execute if score @s module matches 19 if data storage ui:temp _.effect{id:"glowing"} store result score $duration ui_temp run data get storage ui:temp _.effect.duration
    execute if score @s module matches 19 if data storage ui:temp _.effect{id:"glowing"} run scoreboard players operation $duration ui_temp /= #2 ui_num
    execute if score @s module matches 19 if data storage ui:temp _.effect{id:"glowing"} store result storage ui:temp _.effect.duration int 1 run scoreboard players get $duration ui_temp
    execute if score @s module matches 19 if data storage ui:temp _.effect{id:"fire_protection"} store result score $duration ui_temp run data get storage ui:temp _.effect.duration
    execute if score @s module matches 19 if data storage ui:temp _.effect{id:"fire_protection"} run scoreboard players operation $duration ui_temp /= #2 ui_num
    execute if score @s module matches 19 if data storage ui:temp _.effect{id:"fire_protection"} store result storage ui:temp _.effect.duration int 1 run scoreboard players get $duration ui_temp

    # 壊れた時計
    execute if score @s module matches 40 store result score $duration ui_temp run data get storage ui:temp _.duration
    execute if score @s module matches 40 run scoreboard players operation $duration ui_temp *= #15 ui_num
    execute if score @s module matches 40 run scoreboard players operation $duration ui_temp /= #10 ui_num
    execute if score @s module matches 40 store result storage ui:temp _.effect.duration int 1 run scoreboard players get $duration ui_temp

data modify storage ui:temp _.input.id set from storage ui:temp _.effect.id
data modify storage ui:temp _.input.duration set from storage ui:temp _.effect.duration
data modify storage ui:temp _.input.amplifier set from storage ui:temp _.effect.amplifier
execute if data storage ui:temp _.effect{show_particles:0b} run data modify storage ui:temp _.input.hide_particles set value 1b
execute unless data storage ui:temp _.effect{show_particles:0b} run data modify storage ui:temp _.input.hide_particles set value 0b
data modify storage little_brewer: Argument append from storage ui:temp _.input

# 削除し再起
data remove storage ui:temp _
data remove storage ui:temp Effect[0]
scoreboard players remove $num ui_temp 1

execute if score $num ui_temp matches 1.. run function ui:tmw/237/misc/giveeffect/1.burn