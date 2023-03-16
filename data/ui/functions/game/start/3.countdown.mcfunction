execute if score $Countdown ui_temp matches 1.. run title @a actionbar ["",{"text": "開始まで ","color": "gray"},{"score":{"name": "$Countdown","objective": "ui_temp"}},{"text":" ...","color": "gray"}]
execute if score $Countdown ui_temp matches 1.. run playsound block.note_block.hat master @a ~ ~ ~ 1 1 1
execute if score $Countdown ui_temp matches 1.. run schedule function ui:game/start/3.countdown 1s

execute if score $Countdown ui_temp matches ..0 run function ui:game/start/4.start
execute if score $Countdown ui_temp matches ..0 run scoreboard players reset $Countdown ui_temp

execute if score $Countdown ui_temp matches 1.. run scoreboard players remove $Countdown ui_temp 1
