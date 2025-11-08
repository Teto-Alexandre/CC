# 射撃体勢！
    function ui:tmw/237/constant/shoot

# 必要データ収集
    execute if score @s module matches 59 run data modify storage ui:gun temp2 set value {ShotType:1,ShotCT:1,BurstCT:5,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:60,SpeedPlus:0,RangeType:1,Range:60,FlyParticle:117,EndParticle:6,Damage:55,MultiShot:1,ShotFootStep:1,Sound:103,Name:'{"text":"インクスピア","color":"gray"}'}
    #execute store result score $ink.main ui_temp run data get storage ui:gun temp2.TimeUse
    execute store result score $shottype ui_temp run data get storage ui:gun temp2.ShotType
    data modify storage ui:gun temp.DisplayName set from storage ui:gun temp2.Name

# メインプロセスに送信
    execute if score $shottype ui_temp matches 1 run function ui:tmw/237/attack/shot/core
    execute if score $shottype ui_temp matches 2 run function ui:tmw/237/attack/roll/core

# インク減少
    #scoreboard players operation $subtime ui_temp -= $ink.main ui_temp
    #execute if score $subtime ui_temp matches ..0 run scoreboard players set @s ui_use2 0
    #execute if score $subtime ui_temp matches ..0 run scoreboard players set $burst ui_temp 0

# 変更した
    scoreboard players set $changed ui_temp 1
