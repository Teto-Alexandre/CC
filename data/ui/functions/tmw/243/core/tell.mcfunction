# キル数と塗り数の表示

#
tellraw @s ["",{"text":"<","color": "gray"},{"text":"Tutorial","color":"white"},{"text":">: ","color":"gray"},{"text":"操作説明","color":"white"}]
tellraw @s ["",{"text":" メインウェポン"},{"text":": ","color": "gray"},{"keybind":"key.use","color":"gold"},{"text":""}]
tellraw @s ["",{"text":" サブウェポン"},{"text":": ","color": "gray"},{"keybind":"key.drop","color":"gold"},{"text":""}]
tellraw @s ["",{"text":"  - "},{"text":"ダブスペの場合はスペシャルウェポン","color": "gray"}]
tellraw @s ["",{"text":" スペシャルウェポン"},{"text":": ","color": "gray"},{"keybind":"key.swapOffhand","color":"gold"},{"text":""}]
tellraw @s ["",{"text":"  - "},{"text":"ダブサブの場合はサブウェポン2","color": "gray"}]
tellraw @s ["",{"text":"  - "},{"text":"ダブスペの場合はスペシャルウェポン2","color": "gray"}]
tellraw @s ["",{"text":" 移動形態"},{"text":": ","color": "gray"},{"text":"自チームのインクの上で"},{"keybind":"key.sneak","color":"gold"}]
tellraw @s ["",{"text":"  - "},{"text":"壁登り: 壁の近くで上を向いてジャンプ","color": "gray"}]
tellraw @s ["",{"text":"  - "},{"text":"天井張り付き: 天井近くで移動形態","color": "gray"}]
tellraw @s ["",{"text":" 自爆"},{"text":": 真下を向き、インク最大で","color": "gray"},{"keybind":"key.sneak","color":"gold"},{"text":"+"},{"keybind":"key.drop","color":"gold"}]
tellraw @s ["",{"text":" スーパーブースト"},{"text":": ","color": "gray"},{"keybind":"key.sneak","color":"gold"},{"text":"+"},{"keybind":"key.swapOffhand","color":"gold"}]
