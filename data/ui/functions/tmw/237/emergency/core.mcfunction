
execute unless entity @s[x_rotation=90] run tellraw @s ["",{"text":"system","color":"white"},{"text":"> ","color":"green"},{"text":"非常スイッチの使い方:インクMAXで下を向いてSneak+Q","color":"gray"}]
execute if entity @s[x_rotation=90] if score $ink ui_temp = $ink.max ui_temp run function ui:tmw/237/emergency/path