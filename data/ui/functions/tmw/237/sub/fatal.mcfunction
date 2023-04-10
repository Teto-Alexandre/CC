# モジュール適応時

tellraw @a [{"text":"> ","color": "gray"},{"selector":"@s"},{"text":"が","color": "gray"},{"text":"[","color": "white"},{"text":"最強トリック","color": "gold","bold": true},{"text":"]","color": "white"},{"text":"を使用しました","color": "gray"}]

scoreboard players set $ink.sub ui_temp 0
scoreboard players set $ink.sp ui_temp 0

tag @s remove fatal_weapon
