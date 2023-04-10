advancement grant @s only ui:hidden/root

execute if entity @s[tag=!module_unlocked] run tellraw @s [{"text":"Notice","color": "gray"},{"text":"> ","color": "green"},{"text":"モジュール機能を開放しました","color": "gray"}]
execute if entity @s[tag=!module_unlocked] run tellraw @s [{"text":"Notice","color": "gray"},{"text":"> ","color": "green"},{"text":"エンダーチェストから設定可能です","color": "gray"}]
execute if entity @s[tag=!module_unlocked] run playsound entity.player.levelup player @s ~ ~ ~ 0.8 0.5 0.8
tag @s add module_unlocked

scoreboard players add $module unlock 1