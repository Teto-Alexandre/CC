# 王が死んだとき

# ドドドンと花火が上がって大爆発
    execute at @s if score @s ui_team matches 1 run summon firework_rocket ~-2 ~ ~-2 {Life:0,LifeTime:10,Motion:[0.0,0.5,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
    execute at @s if score @s ui_team matches 1 run summon firework_rocket ~-2 ~ ~2 {Life:0,LifeTime:14,Motion:[0.0,0.3,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
    execute at @s if score @s ui_team matches 1 run summon firework_rocket ~2 ~ ~-2 {Life:0,LifeTime:16,Motion:[0.0,0.2,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
    execute at @s if score @s ui_team matches 1 run summon firework_rocket ~2 ~ ~2 {Life:0,LifeTime:12,Motion:[0.0,0.4,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
    execute at @s if score @s ui_team matches 1 run summon firework_rocket ~ ~ ~ {Tags:["ui_17_blue"],Life:0,LifeTime:18,Motion:[0.0,0.1,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
    execute at @s if score @s ui_team matches 1 run tellraw @a {"text":"青チームのキングが死亡しました","color":"aqua","bold":true}
    execute at @s if score @s ui_team matches 2 run summon firework_rocket ~-2 ~ ~-2 {Life:0,LifeTime:10,Motion:[0.0,0.6,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16711935,16777215],FadeColors:[I;16777215]}]}}}}
    execute at @s if score @s ui_team matches 2 run summon firework_rocket ~-2 ~ ~2 {Life:0,LifeTime:18,Motion:[0.0,0.2,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16711935,16777215],FadeColors:[I;16777215]}]}}}}
    execute at @s if score @s ui_team matches 2 run summon firework_rocket ~2 ~ ~-2 {Life:0,LifeTime:22,Motion:[0.0,0.0,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16711935,16777215],FadeColors:[I;16777215]}]}}}}
    execute at @s if score @s ui_team matches 2 run summon firework_rocket ~2 ~ ~2 {Life:0,LifeTime:14,Motion:[0.0,0.4,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16711935,16777215],FadeColors:[I;16777215]}]}}}}
    execute at @s if score @s ui_team matches 2 run summon firework_rocket ~ ~ ~ {Tags:["ui_17_red"],Life:0,LifeTime:18,Motion:[0.0,0.1,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16711935,16777215],FadeColors:[I;16777215]}]}}}}
    execute at @s if score @s ui_team matches 2 run tellraw @a {"text":"赤チームのキングが死亡しました","color":"light_purple","bold":true}
    execute at @s if score @s ui_team matches 3 run summon firework_rocket ~-2 ~ ~-2 {Life:0,LifeTime:10,Motion:[0.0,0.6,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16514816,16777215],FadeColors:[I;16777215]}]}}}}
    execute at @s if score @s ui_team matches 3 run summon firework_rocket ~-2 ~ ~2 {Life:0,LifeTime:18,Motion:[0.0,0.2,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16514816,16777215],FadeColors:[I;16777215]}]}}}}
    execute at @s if score @s ui_team matches 3 run summon firework_rocket ~2 ~ ~-2 {Life:0,LifeTime:22,Motion:[0.0,0.0,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16514816,16777215],FadeColors:[I;16777215]}]}}}}
    execute at @s if score @s ui_team matches 3 run summon firework_rocket ~2 ~ ~2 {Life:0,LifeTime:14,Motion:[0.0,0.4,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16514816,16777215],FadeColors:[I;16777215]}]}}}}
    execute at @s if score @s ui_team matches 3 run summon firework_rocket ~ ~ ~ {Tags:["ui_17_yellow"],Life:0,LifeTime:18,Motion:[0.0,0.1,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16514816,16777215],FadeColors:[I;16777215]}]}}}}
    execute at @s if score @s ui_team matches 3 run tellraw @a {"text":"黄チームのキングが死亡しました","color":"yellow","bold":true}
    execute at @s if score @s ui_team matches 4 run summon firework_rocket ~-2 ~ ~-2 {Life:0,LifeTime:10,Motion:[0.0,0.6,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;3997440,16777215],FadeColors:[I;16777215]}]}}}}
    execute at @s if score @s ui_team matches 4 run summon firework_rocket ~-2 ~ ~2 {Life:0,LifeTime:18,Motion:[0.0,0.2,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;3997440,16777215],FadeColors:[I;16777215]}]}}}}
    execute at @s if score @s ui_team matches 4 run summon firework_rocket ~2 ~ ~-2 {Life:0,LifeTime:22,Motion:[0.0,0.0,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;3997440,16777215],FadeColors:[I;16777215]}]}}}}
    execute at @s if score @s ui_team matches 4 run summon firework_rocket ~2 ~ ~2 {Life:0,LifeTime:14,Motion:[0.0,0.4,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;3997440,16777215],FadeColors:[I;16777215]}]}}}}
    execute at @s if score @s ui_team matches 4 run summon firework_rocket ~ ~ ~ {Tags:["ui_17_green"],Life:0,LifeTime:18,Motion:[0.0,0.1,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;3997440,16777215],FadeColors:[I;16777215]}]}}}}
    execute at @s if score @s ui_team matches 4 run tellraw @a {"text":"緑チームのキングが死亡しました","color":"green","bold":true}
    particle explosion_emitter ~ ~1.5 ~ 0 0 0 0 1 force
    playsound entity.generic.explode player @a ~ ~ ~ 5 0.5 0

#
    tag @s remove king
    scoreboard players remove @s health 50