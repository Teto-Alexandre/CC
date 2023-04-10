tellraw @s [{"text":"Module","color": "gray"},{"text":"> ","color": "gold"},{"text":"[","color": "white"},{"text":"フィーバー","color": "light_purple","bold": true},{"text":"]","color": "white"},{"text":"を獲得しました","color": "gray"}]
tellraw @s [{"text":"Notice","color": "gray"},{"text":"> ","color": "green"},{"text":"パーティーモードを開放しました","color": "gray"}]
tellraw @s [{"text":"Notice","color": "gray"},{"text":"> ","color": "green"},{"text":"ゲーム設定から設定可能です","color": "gray"}]
execute if entity @s[tag=!module_unlocked] run playsound entity.player.levelup player @s ~ ~ ~ 0.8 0.5 0.8
tag @s add party_unlocked

function ui:advancements/hidden_root