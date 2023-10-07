execute if entity @a[tag=win,scores={ui_team=1}] run tellraw @a [{"text":"青チームの勝利！","color": "aqua"}]
execute if entity @a[tag=win,scores={ui_team=2}] run tellraw @a [{"text":"赤チームの勝利！","color": "light_purple"}]
execute if entity @a[tag=win,scores={ui_team=3}] run tellraw @a [{"text":"黄チームの勝利！","color": "yellow"}]
execute if entity @a[tag=win,scores={ui_team=4}] run tellraw @a [{"text":"緑チームの勝利！","color": "green"}]

execute as @a[tag=win,scores={ui_team=1}] at @s run summon firework_rocket ~ ~ ~ {Life:0,LifeTime:0,Motion:[0.0,0.5,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
execute as @a[tag=win,scores={ui_team=2}] at @s run summon firework_rocket ~ ~ ~ {Life:0,LifeTime:0,Motion:[0.0,0.6,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16711935,16777215],FadeColors:[I;16777215]}]}}}}
execute as @a[tag=win,scores={ui_team=3}] at @s run summon firework_rocket ~ ~ ~ {Life:0,LifeTime:0,Motion:[0.0,0.6,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16514816,16777215],FadeColors:[I;16777215]}]}}}}
execute as @a[tag=win,scores={ui_team=4}] at @s run summon firework_rocket ~ ~ ~ {Life:0,LifeTime:0,Motion:[0.0,0.6,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;3997440,16777215],FadeColors:[I;16777215]}]}}}}

tag @a remove win