scoreboard players set $area_progress ui_temp 1000
scoreboard players set $area_progress_display ui_temp 0
scoreboard players set $area_progress_boost ui_temp 15

bossbar add ui:area [{"text": "エリア支配度: ","color": "white","bold": true},{"score":{"name": "$area_progress_display","objective": "ui_temp"}}]
bossbar set ui:area players @a
bossbar set ui:area max 1000
bossbar set ui:area value 0

scoreboard players set $area_color ui_temp 0