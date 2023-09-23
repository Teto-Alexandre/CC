# ドドドンと花火が上がって大爆発  赤勝利演出
    summon firework_rocket ~-4 ~1 ~-4 {Life:0,LifeTime:10,Motion:[0.0,0.6,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16514816,16777215],FadeColors:[I;16777215]}]}}}}
    summon firework_rocket ~-4 ~1 ~4 {Life:0,LifeTime:18,Motion:[0.0,0.2,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16514816,16777215],FadeColors:[I;16777215]}]}}}}
    summon firework_rocket ~4 ~1 ~-4 {Life:0,LifeTime:22,Motion:[0.0,0.0,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16514816,16777215],FadeColors:[I;16777215]}]}}}}
    summon firework_rocket ~4 ~1 ~4 {Life:0,LifeTime:14,Motion:[0.0,0.4,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16514816,16777215],FadeColors:[I;16777215]}]}}}}
    summon marker ~ ~1 ~ {Tags:["ui_17_yellow"]}

    particle explosion_emitter ~ ~1.5 ~ 0 0 0 0 1 force
    playsound entity.generic.explode player @a ~ ~ ~ 5 0.5 0
    execute if score $count ui_temp matches 0 run tellraw @a {"text":"黄チームの勝利！","color":"yellow","bold":true}
    
    scoreboard players add $count ui_temp 1

    function ui:ui/18/nofunc/end