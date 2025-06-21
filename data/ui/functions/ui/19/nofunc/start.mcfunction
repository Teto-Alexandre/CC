scoreboard players set $ashiba_progress_aqua ui_temp 0
scoreboard players set $ashiba_progress_yellow ui_temp 0
scoreboard players set $ashiba_progress_now ui_temp 0
scoreboard players set $ashiba_progress_display ui_temp 0
scoreboard players set $ashiba_progress_display_yellow ui_temp 0

bossbar add ui:area [{"text": "進行:[","color": "white","bold": true},{"score":{"name": "$ashiba_progress_aqua","objective": "ui_temp"},"color": "aqua"},{"text": "-","color": "white","bold": true},{"score":{"name": "$ashiba_progress_yellow","objective": "ui_temp"},"color": "yellow"},{"text": "] ","color": "white","bold": true},{"text": "現在地: ","color": "white","bold": true},{"score":{"name": "$ashiba_progress_now","objective": "ui_temp"}}]
bossbar set ui:area players @a
bossbar set ui:area max 100
bossbar set ui:area value 100

scoreboard players set $area_color ui_temp 0