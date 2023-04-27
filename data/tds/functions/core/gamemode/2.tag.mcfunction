#

#
execute if entity @a[tag=tds_tempa] run scoreboard players operation @s ui_team = @a[tag=tds_tempa,limit=1] ui_team
function ui:game/pl_comp/

# ドドドンと花火が上がって大爆発
    execute unless entity @a[scores={ui_team=2},tag=!spactate] unless entity @a[scores={ui_team=3},tag=!spactate] unless entity @a[scores={ui_team=4},tag=!spactate] run summon firework_rocket ~-2 ~ ~-2 {Life:0,LifeTime:10,Motion:[0.0,0.5,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
    execute unless entity @a[scores={ui_team=2},tag=!spactate] unless entity @a[scores={ui_team=3},tag=!spactate] unless entity @a[scores={ui_team=4},tag=!spactate] run summon firework_rocket ~-2 ~ ~2 {Life:0,LifeTime:14,Motion:[0.0,0.3,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
    execute unless entity @a[scores={ui_team=2},tag=!spactate] unless entity @a[scores={ui_team=3},tag=!spactate] unless entity @a[scores={ui_team=4},tag=!spactate] run summon firework_rocket ~2 ~ ~-2 {Life:0,LifeTime:16,Motion:[0.0,0.2,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
    execute unless entity @a[scores={ui_team=2},tag=!spactate] unless entity @a[scores={ui_team=3},tag=!spactate] unless entity @a[scores={ui_team=4},tag=!spactate] run summon firework_rocket ~2 ~ ~2 {Life:0,LifeTime:12,Motion:[0.0,0.4,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
    execute unless entity @a[scores={ui_team=2},tag=!spactate] unless entity @a[scores={ui_team=3},tag=!spactate] unless entity @a[scores={ui_team=4},tag=!spactate] run summon firework_rocket ~ ~ ~ {Tags:["ui_17_blue"],Life:0,LifeTime:18,Motion:[0.0,0.1,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
    execute unless entity @a[scores={ui_team=2},tag=!spactate] unless entity @a[scores={ui_team=3},tag=!spactate] unless entity @a[scores={ui_team=4},tag=!spactate] run tellraw @a {"text":"青チームが勝利しました","color":"aqua","bold":true}
    execute unless entity @a[scores={ui_team=3},tag=!spactate] unless entity @a[scores={ui_team=4},tag=!spactate] unless entity @a[scores={ui_team=1},tag=!spactate] run summon firework_rocket ~-2 ~ ~-2 {Life:0,LifeTime:10,Motion:[0.0,0.6,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16711935,16777215],FadeColors:[I;16777215]}]}}}}
    execute unless entity @a[scores={ui_team=3},tag=!spactate] unless entity @a[scores={ui_team=4},tag=!spactate] unless entity @a[scores={ui_team=1},tag=!spactate] run summon firework_rocket ~-2 ~ ~2 {Life:0,LifeTime:18,Motion:[0.0,0.2,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16711935,16777215],FadeColors:[I;16777215]}]}}}}
    execute unless entity @a[scores={ui_team=3},tag=!spactate] unless entity @a[scores={ui_team=4},tag=!spactate] unless entity @a[scores={ui_team=1},tag=!spactate] run summon firework_rocket ~2 ~ ~-2 {Life:0,LifeTime:22,Motion:[0.0,0.0,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16711935,16777215],FadeColors:[I;16777215]}]}}}}
    execute unless entity @a[scores={ui_team=3},tag=!spactate] unless entity @a[scores={ui_team=4},tag=!spactate] unless entity @a[scores={ui_team=1},tag=!spactate] run summon firework_rocket ~2 ~ ~2 {Life:0,LifeTime:14,Motion:[0.0,0.4,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16711935,16777215],FadeColors:[I;16777215]}]}}}}
    execute unless entity @a[scores={ui_team=3},tag=!spactate] unless entity @a[scores={ui_team=4},tag=!spactate] unless entity @a[scores={ui_team=1},tag=!spactate] run summon firework_rocket ~ ~ ~ {Tags:["ui_17_red"],Life:0,LifeTime:18,Motion:[0.0,0.1,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16711935,16777215],FadeColors:[I;16777215]}]}}}}
    execute unless entity @a[scores={ui_team=3},tag=!spactate] unless entity @a[scores={ui_team=4},tag=!spactate] unless entity @a[scores={ui_team=1},tag=!spactate] run tellraw @a {"text":"赤チームが勝利しました","color":"light_purple","bold":true}
    execute unless entity @a[scores={ui_team=4},tag=!spactate] unless entity @a[scores={ui_team=1},tag=!spactate] unless entity @a[scores={ui_team=2},tag=!spactate] run summon firework_rocket ~-2 ~ ~-2 {Life:0,LifeTime:10,Motion:[0.0,0.6,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16514816,16777215],FadeColors:[I;16777215]}]}}}}
    execute unless entity @a[scores={ui_team=4},tag=!spactate] unless entity @a[scores={ui_team=1},tag=!spactate] unless entity @a[scores={ui_team=2},tag=!spactate] run summon firework_rocket ~-2 ~ ~2 {Life:0,LifeTime:18,Motion:[0.0,0.2,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16514816,16777215],FadeColors:[I;16777215]}]}}}}
    execute unless entity @a[scores={ui_team=4},tag=!spactate] unless entity @a[scores={ui_team=1},tag=!spactate] unless entity @a[scores={ui_team=2},tag=!spactate] run summon firework_rocket ~2 ~ ~-2 {Life:0,LifeTime:22,Motion:[0.0,0.0,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16514816,16777215],FadeColors:[I;16777215]}]}}}}
    execute unless entity @a[scores={ui_team=4},tag=!spactate] unless entity @a[scores={ui_team=1},tag=!spactate] unless entity @a[scores={ui_team=2},tag=!spactate] run summon firework_rocket ~2 ~ ~2 {Life:0,LifeTime:14,Motion:[0.0,0.4,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16514816,16777215],FadeColors:[I;16777215]}]}}}}
    execute unless entity @a[scores={ui_team=4},tag=!spactate] unless entity @a[scores={ui_team=1},tag=!spactate] unless entity @a[scores={ui_team=2},tag=!spactate] run summon firework_rocket ~ ~ ~ {Tags:["ui_17_yellow"],Life:0,LifeTime:18,Motion:[0.0,0.1,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16514816,16777215],FadeColors:[I;16777215]}]}}}}
    execute unless entity @a[scores={ui_team=4},tag=!spactate] unless entity @a[scores={ui_team=1},tag=!spactate] unless entity @a[scores={ui_team=2},tag=!spactate] run tellraw @a {"text":"黄チームが勝利しました","color":"yellow","bold":true}
    execute unless entity @a[scores={ui_team=1},tag=!spactate] unless entity @a[scores={ui_team=2},tag=!spactate] unless entity @a[scores={ui_team=3},tag=!spactate] run summon firework_rocket ~-2 ~ ~-2 {Life:0,LifeTime:10,Motion:[0.0,0.6,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;3997440,16777215],FadeColors:[I;16777215]}]}}}}
    execute unless entity @a[scores={ui_team=1},tag=!spactate] unless entity @a[scores={ui_team=2},tag=!spactate] unless entity @a[scores={ui_team=3},tag=!spactate] run summon firework_rocket ~-2 ~ ~2 {Life:0,LifeTime:18,Motion:[0.0,0.2,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;3997440,16777215],FadeColors:[I;16777215]}]}}}}
    execute unless entity @a[scores={ui_team=1},tag=!spactate] unless entity @a[scores={ui_team=2},tag=!spactate] unless entity @a[scores={ui_team=3},tag=!spactate] run summon firework_rocket ~2 ~ ~-2 {Life:0,LifeTime:22,Motion:[0.0,0.0,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;3997440,16777215],FadeColors:[I;16777215]}]}}}}
    execute unless entity @a[scores={ui_team=1},tag=!spactate] unless entity @a[scores={ui_team=2},tag=!spactate] unless entity @a[scores={ui_team=3},tag=!spactate] run summon firework_rocket ~2 ~ ~2 {Life:0,LifeTime:14,Motion:[0.0,0.4,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;3997440,16777215],FadeColors:[I;16777215]}]}}}}
    execute unless entity @a[scores={ui_team=1},tag=!spactate] unless entity @a[scores={ui_team=2},tag=!spactate] unless entity @a[scores={ui_team=3},tag=!spactate] run summon firework_rocket ~ ~ ~ {Tags:["ui_17_green"],Life:0,LifeTime:18,Motion:[0.0,0.1,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;3997440,16777215],FadeColors:[I;16777215]}]}}}}
    execute unless entity @a[scores={ui_team=1},tag=!spactate] unless entity @a[scores={ui_team=2},tag=!spactate] unless entity @a[scores={ui_team=3},tag=!spactate] run tellraw @a {"text":"緑チームが勝利しました","color":"green","bold":true}
    particle explosion_emitter ~ ~1.5 ~ 0 0 0 0 1 force
    playsound entity.generic.explode player @a ~ ~ ~ 5 0.5 0
