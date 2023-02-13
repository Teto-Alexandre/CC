# インクタンクを最大にするタグ
execute store result score $ink.max ui_temp run data get storage ui:gun temp.InkMax
scoreboard players operation $ink ui_temp = $ink.max ui_temp
scoreboard players set $changed ui_temp 1

# タグ消し
tag @s remove tmw_237_tag_inkfill