scoreboard players set $area_progress ui_temp 100000
scoreboard players set $area_progress_display ui_temp 0
scoreboard players set $area_progress_boost ui_temp 1500
scoreboard players set $area_blue ui_temp 0
scoreboard players set $area_yellow ui_temp 0

bossbar add ui:area [{"text": "占領:[","color": "white","bold": true},{"score":{"name": "$area_blue","objective": "ui_temp"},"color": "aqua"},{"text": "-","color": "white","bold": true},{"score":{"name": "$area_yellow","objective": "ui_temp"},"color": "yellow"},{"text": "] ","color": "white","bold": true},{"text": "エリア支配度: ","color": "white","bold": true},{"score":{"name": "$area_progress_display","objective": "ui_temp"}}]
bossbar set ui:area players @a
bossbar set ui:area max 100000
bossbar set ui:area value 0

scoreboard players set $area_color ui_temp 0