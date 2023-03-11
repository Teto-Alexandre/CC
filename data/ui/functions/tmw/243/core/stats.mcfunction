# キル数と塗り数の表示

#
tellraw @s ["",{"text":"<","color": "gray"},{"text":"Record","color":"white"},{"text":">: ","color":"gray"},{"text":"戦績を表示します","color":"white"}]
tellraw @s ["",{"text":" ・ プレイ回数"},{"text":": ","color": "gray"},{"score":{"name": "@s","objective": "ui_r_game"},"color":"gold"},{"text":"回"}]
tellraw @s ["",{"text":" ・ 塗り"},{"text":": ","color": "gray"},{"score":{"name": "@s","objective": "ui_r_paint"},"color":"gold"},{"text":"ブロック"}]
tellraw @s ["",{"text":" ・ キル"},{"text":": ","color": "gray"},{"score":{"name": "@s","objective": "ui_r_kill"},"color":"gold"},{"text":"回"}]
tellraw @s ["",{"text":" ・ アシスト"},{"text":": ","color": "gray"},{"score":{"name": "@s","objective": "ui_r_assist"},"color":"gold"},{"text":"回"}]
tellraw @s ["",{"text":" ・ デス"},{"text":": ","color": "gray"},{"score":{"name": "@s","objective": "ui_r_death"},"color":"gold"},{"text":"回"}]
tellraw @s ["",{"text":" ・ サブ使用回数"},{"text":": ","color": "gray"},{"score":{"name": "@s","objective": "ui_r_q"},"color":"gold"},{"text":"回"}]
tellraw @s ["",{"text":" ・ スペ使用回数"},{"text":": ","color": "gray"},{"score":{"name": "@s","objective": "ui_r_f"},"color":"gold"},{"text":"回"}]
tellraw @s ["",{"text":" ・ 最遠キル距離"},{"text":": ","color": "gray"},{"score":{"name": "@s","objective": "ui_r_kill_dist"},"color":"gold"},{"text":"メートル"}]
