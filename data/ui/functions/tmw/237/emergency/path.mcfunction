execute store result score $temp ui_temp run data get entity @s SelectedItemSlot
execute if score $temp ui_temp matches 0..8 run tellraw @a ["",{"text":"System","color":"white"},{"text":">> ","color":"red"},{"selector":"@s"},{"text":"が緊急自爆スイッチを実行しました","color":"gray"}]
execute if score $temp ui_temp matches 0..8 if entity @s[advancements={ui:add/basic/self_destruct=false}] run advancement grant @s only ui:add/basic/self_destruct
execute if score $temp ui_temp matches 0..8 run kill @s