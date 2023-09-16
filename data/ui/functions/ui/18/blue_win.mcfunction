# ドドドンと花火が上がって大爆発  青勝利演出
    summon firework_rocket ~-4 ~1 ~-4 {Life:0,LifeTime:10,Motion:[0.0,0.5,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
    summon firework_rocket ~-4 ~1 ~4 {Life:0,LifeTime:14,Motion:[0.0,0.3,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
    summon firework_rocket ~4 ~1 ~-4 {Life:0,LifeTime:16,Motion:[0.0,0.2,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
    summon firework_rocket ~4 ~1 ~4 {Life:0,LifeTime:12,Motion:[0.0,0.4,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
    summon marker ~ ~1 ~ {Tags:["ui_17_blue"]}

    particle explosion_emitter ~ ~1.5 ~ 0 0 0 0 1 force
    playsound entity.generic.explode player @a ~ ~ ~ 5 0.5 0
    tellraw @a {"text":"青チームの勝利！","color":"aqua","bold":true}

    function ui:ui/18/nofunc/end