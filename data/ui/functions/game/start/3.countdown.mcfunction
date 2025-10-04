# ガチアシバ
execute if score $Countdown ui_temp matches 2 if data storage ui:map {mode:"Asiba"} if score $map ui_world matches 33 run summon bat -117 32 0 {Silent:1b,NoAI:1b,Tags:["ui_egg","ui_19"]}
execute if score $Countdown ui_temp matches 2 if data storage ui:map {mode:"Asiba"} if score $map ui_world matches 33 run fill -117 30 -1 -19 33 -28 light_blue_concrete replace white_concrete
execute if score $Countdown ui_temp matches 2 if data storage ui:map {mode:"Asiba"} if score $map ui_world matches 33 run fill -117 30 -1 -19 33 -28 light_blue_concrete replace yellow_concrete
execute if score $Countdown ui_temp matches 2 if data storage ui:map {mode:"Asiba"} if score $map ui_world matches 33 run fill -117 30 1 -19 33 28 yellow_concrete replace white_concrete
execute if score $Countdown ui_temp matches 2 if data storage ui:map {mode:"Asiba"} if score $map ui_world matches 33 run fill -117 30 1 -19 33 28 yellow_concrete replace light_blue_concrete

execute if score $Countdown ui_temp matches 2 if data storage ui:map {mode:"Asiba"} if score $map ui_world matches 40 run summon bat 145 36 250 {Silent:1b,NoAI:1b,Tags:["ui_egg","ui_19"]}
execute if score $Countdown ui_temp matches 2 if data storage ui:map {mode:"Asiba"} if score $map ui_world matches 40 run fill 119 31 249 171 42 216 light_blue_concrete replace white_concrete
execute if score $Countdown ui_temp matches 2 if data storage ui:map {mode:"Asiba"} if score $map ui_world matches 40 run fill 119 31 249 171 42 216 light_blue_concrete replace yellow_concrete
execute if score $Countdown ui_temp matches 2 if data storage ui:map {mode:"Asiba"} if score $map ui_world matches 40 run fill 119 31 251 171 42 284 yellow_concrete replace white_concrete
execute if score $Countdown ui_temp matches 2 if data storage ui:map {mode:"Asiba"} if score $map ui_world matches 40 run fill 119 31 251 171 42 284 yellow_concrete replace light_blue_concrete

execute if score $Countdown ui_temp matches 2 if data storage ui:map {mode:"Asiba"} if score $map ui_world matches 41 run summon bat 79 34 252 {Silent:1b,NoAI:1b,Tags:["ui_egg","ui_19"]}
execute if score $Countdown ui_temp matches 2 if data storage ui:map {mode:"Asiba"} if score $map ui_world matches 41 run fill 44 33 282 114 42 253 yellow_concrete replace white_concrete
execute if score $Countdown ui_temp matches 2 if data storage ui:map {mode:"Asiba"} if score $map ui_world matches 41 run fill 44 33 282 114 42 253 yellow_concrete replace light_blue_concrete
execute if score $Countdown ui_temp matches 2 if data storage ui:map {mode:"Asiba"} if score $map ui_world matches 41 run fill 44 33 222 114 42 251 light_blue_concrete replace white_concrete
execute if score $Countdown ui_temp matches 2 if data storage ui:map {mode:"Asiba"} if score $map ui_world matches 41 run fill 44 33 222 114 42 251 light_blue_concrete replace yellow_concrete
execute if score $Countdown ui_temp matches 2 if data storage ui:map {mode:"Asiba"} if score $map ui_world matches 41 run fill 44 43 282 114 52 253 yellow_concrete replace white_concrete
execute if score $Countdown ui_temp matches 2 if data storage ui:map {mode:"Asiba"} if score $map ui_world matches 41 run fill 44 43 282 114 52 253 yellow_concrete replace light_blue_concrete
execute if score $Countdown ui_temp matches 2 if data storage ui:map {mode:"Asiba"} if score $map ui_world matches 41 run fill 44 43 222 114 52 251 light_blue_concrete replace white_concrete
execute if score $Countdown ui_temp matches 2 if data storage ui:map {mode:"Asiba"} if score $map ui_world matches 41 run fill 44 43 222 114 52 251 light_blue_concrete replace yellow_concrete

#
execute if score $Countdown ui_temp matches 1.. run title @a actionbar ["",{"text": "開始まで ","color": "gray"},{"score":{"name": "$Countdown","objective": "ui_temp"}},{"text":" ...","color": "gray"}]
execute if score $Countdown ui_temp matches 1.. run playsound block.note_block.hat master @a ~ ~ ~ 1 1 1
execute if score $Countdown ui_temp matches 1.. run schedule function ui:game/start/3.countdown 1s

execute if score $Countdown ui_temp matches ..0 run function ui:game/start/4.start
execute if score $Countdown ui_temp matches ..0 run scoreboard players reset $Countdown ui_temp

execute if score $Countdown ui_temp matches 1.. run scoreboard players remove $Countdown ui_temp 1
