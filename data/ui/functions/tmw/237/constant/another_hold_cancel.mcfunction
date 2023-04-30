# デバッグ用
    #tellraw @s [{"text":"Debug","color":"white"},{"text":">> ","color":"gold"},{"text":"チャージキープと内部タイマーを停止します","color":"white"}]
    #tellraw @s [{"text":"Debug","color":"white"},{"text":">> ","color":"gold"},{"text":"HoldTime:","color":"red"},{"score":{"name":"$ishold","objective":"ui_temp"},"color":"red"},{"text":", ChargeMax:","color":"gold"},{"score":{"name":"$burst.max","objective":"ui_temp"},"color":"gold"},{"text":", Margin:","color":"yellow"},{"score":{"name":"$keeplevel","objective":"ui_temp"},"color":"yellow"},{"text":", HoldMax:","color":"green"},{"score":{"name":"$chargekeep","objective":"ui_temp"},"color":"green"}]

#
    scoreboard players set $subtime ui_temp 0
    scoreboard players set $sptime ui_temp 0
    scoreboard players set $burst ui_temp 0

# チャージキャンセルする
    scoreboard players set $ishold ui_temp 0
    scoreboard players set $multibullet ui_temp 0
    scoreboard players set $changed ui_temp 1
    playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 0.8 0