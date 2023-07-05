## ストレージで設定されたポーション効果を適応する

#
data modify storage ui:temp __ set from storage ui:temp Effect

# カウント
execute store result score $num ui_temp run data get storage ui:temp Effect

# 切削
execute if score $num ui_temp matches 1.. run function ui:tmw/237/misc/giveeffect/1.burn

# 召喚
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["Effect_AEC","temp_unpower"],NoGravity:1b,Radius:0.0f,Age:4,Duration:6,WaitTime:0,Effects:[]}
data modify entity @e[tag=Effect_AEC,tag=temp_unpower,limit=1,sort=nearest] Effects set from storage ui:temp Output[]
tag @e[tag=temp_unpower] remove temp_unpower

# 最後に
data modify storage ui:temp Effect set from storage ui:temp __
data remove storage ui:temp Output
data remove storage ui:temp __
scoreboard players reset $num ui_temp
scoreboard players reset $potionId ui_temp
scoreboard players reset $success ui_temp