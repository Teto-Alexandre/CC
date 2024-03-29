# ミサイル召喚
    summon vex ~ ~ ~ {Tags:["tag","tmw_242"],Motion:[0.0d,0.0d,0.0d],active_effects:[{id:"minecraft:invisibility",duration:20000,amplifier:1b,show_particles:0b}],Silent:1b}
    #召喚した本体に固有ID設定
    execute as @e[tag=tag] at @s run function ui:misc/act/make_obj_id

    summon marker ~ ~ ~ {Tags:["ui_temp_anchor"]}
    execute as @e[tag=ui_temp_anchor] run function ui:template/square_shuffle
    execute as @e[tag=tag] at @s facing entity @e[tag=ui_temp_anchor] feet run function ui:template/accelerator/1.5
    #タイプを選択
    scoreboard players set @e[tag=tag] ui_gms -1
    scoreboard players set @e[tag=tag] ui_gt 1
    #継速度係数 - 前のtickの速度を何倍にするかの計算に使用 100なら等倍 50なら半減 
    #            これを100以上にすると減速限界が発生 & 速度キャパが無くなる
    scoreboard players set @e[tag=tag] ui_bm -1
    #加速度係数 - 加速度の倍加係数 多いほどよく追尾する 推奨値は20
    scoreboard players set @e[tag=tag] ui_bm_temp -1
    #寿命 - 爆発までのtick数
    scoreboard players set $mod ui_calc1 10
    function ui:common/rand
    scoreboard players add $rand ui_calc1 50
    scoreboard players operation @e[tag=tag] ui_br = $rand ui_calc1
    #ターゲットを選択
    execute as @e[tag=tag] at @s run scoreboard players operation @s ui_gpc = $obj_id ui_temp

# キャッシュクリア
    tag @e[tag=tag] remove tag
    kill @e[tag=ui_temp_anchor]
    schedule function ui:tmw/242/ss/load 1t append