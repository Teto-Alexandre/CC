# モード変更
scoreboard players add $mode ui_temp 1
execute if score $mode ui_temp > $mode.max ui_temp run playsound item.spyglass.use player @a ~ ~ ~ 1 2 0
execute unless score $mode ui_temp > $mode.max ui_temp run playsound item.spyglass.use player @a ~ ~ ~ 1 1.5 0
execute if score $mode ui_temp > $mode.max ui_temp run scoreboard players set $mode ui_temp 1

#
execute if score $type ui_temp matches 1 if score $mode ui_temp matches 1 run tellraw @s [{"text":"System","color":"gray"},{"text":"> ","color":"green"},{"text":"モード:新規作成","color":"white"}]
execute if score $type ui_temp matches 1 if score $mode ui_temp matches 2 run tellraw @s [{"text":"System","color":"gray"},{"text":"> ","color":"green"},{"text":"モード:マップ選択","color":"white"}]
execute if score $type ui_temp matches 1 if score $mode ui_temp matches 3 run tellraw @s [{"text":"System","color":"gray"},{"text":"> ","color":"green"},{"text":"モード:マップ確定・キャンセル","color":"white"}]

execute if score $type ui_temp matches 2 if score $mode ui_temp matches 1 run tellraw @s [{"text":"System","color":"gray"},{"text":"> ","color":"green"},{"text":"モード:マップ範囲設定","color":"white"}]
execute if score $type ui_temp matches 2 if score $mode ui_temp matches 2 run tellraw @s [{"text":"System","color":"gray"},{"text":"> ","color":"green"},{"text":"モード:リスポーン・ギミック位置設定","color":"white"}]

execute if score $type ui_temp matches 3 if score $mode ui_temp matches 1 run tellraw @s [{"text":"System","color":"gray"},{"text":"> ","color":"green"},{"text":"モード:マップカラー切り替え","color":"white"}]
execute if score $type ui_temp matches 3 if score $mode ui_temp matches 2 run tellraw @s [{"text":"System","color":"gray"},{"text":"> ","color":"green"},{"text":"モード:マップチームタイプ選択","color":"white"}]

scoreboard players set $changed ui_temp 1