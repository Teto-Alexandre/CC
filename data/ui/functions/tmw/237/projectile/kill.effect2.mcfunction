#
    execute if entity @s[tag=tmw237_has_bullet_data] run data modify storage ui:gun temp3.BulletData set from entity @s data.BulletData

# 同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
    tag @s add ui_temp_this
    scoreboard players operation $id ui_temp = @s ui_id
    scoreboard players operation $team ui_temp = @s ui_team
    execute as @e[predicate=ui:load_unhurtable] if score @s ui_team = $team ui_temp run tag @s add ui_temp_team
    execute if entity @s[tag=subdamage] run scoreboard players set $subdamage ui_temp 1

# ヒット音
    #execute if score @s ui_hpart matches 0 run playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1 1
    playsound minecraft:block.honey_block.break neutral @a ~ ~ ~ 1 1

# 塗り値を初期化
    scoreboard players set $paint ui_temp 0

# ※パーティーモード※
    execute if score $ke2 party_mode matches 1.. run function ui:party/ke2

# ヒットパーティクル
    # サイズ別通常爆発
        execute if score @s ui_hpart matches 1 run function ui:tmw/237/projectile/killeffect/1
        execute if score @s ui_hpart matches 2 run function ui:tmw/237/projectile/killeffect/2
        execute if score @s ui_hpart matches 3 run function ui:tmw/237/projectile/killeffect/3
        execute if score @s ui_hpart matches -50..-31 run function ui:tmw/237/projectile/killeffect/3.1
        execute if score @s ui_hpart matches 4 run function ui:tmw/237/projectile/killeffect/4
        execute if score @s ui_hpart matches 5 run function ui:tmw/237/projectile/killeffect/5
        execute if score @s ui_hpart matches -60..-51 run function ui:tmw/237/projectile/killeffect/5.1
        execute if score @s ui_hpart matches 6 run function ui:tmw/237/projectile/killeffect/6
        execute if score @s ui_hpart matches -61 run function ui:tmw/237/projectile/killeffect/6.1
        execute if score @s ui_hpart matches -62 run function ui:tmw/237/projectile/killeffect/6.2
        execute if score @s ui_hpart matches ..-63 run function ui:tmw/237/projectile/killeffect/6.3
        execute if score @s ui_hpart matches 7 run function ui:tmw/237/projectile/killeffect/7
        execute if score @s ui_hpart matches 8 run function ui:tmw/237/projectile/killeffect/8
        execute if score @s ui_hpart matches 9 run function ui:tmw/237/projectile/killeffect/9
        execute if score @s ui_hpart matches 10 run function ui:tmw/237/projectile/killeffect/10
        execute if score @s ui_hpart matches 11..19 run function ui:tmw/237/projectile/killeffect/11
        execute if score @s ui_hpart matches 20 run function ui:tmw/237/projectile/killeffect/20
    # 個別
        # アメフラシ
        execute if score @s ui_hpart matches 21..101 run function ui:tmw/237/projectile/killeffect/101
        # マルチミサイル
        execute if score @s ui_hpart matches 102 run function ui:tmw/237/projectile/killeffect/102
        # ヘルハウンド
        execute if score @s ui_hpart matches 103 run function ui:tmw/237/projectile/killeffect/103
        # トリトル
        execute if score @s ui_hpart matches 104 run function ui:tmw/237/projectile/killeffect/104
        # ウルショ召喚
        execute if score @s ui_hpart matches 105 run function ui:tmw/237/projectile/killeffect/105
        # マルチミサイル（横）
        execute if score @s ui_hpart matches 106 run function ui:tmw/237/projectile/killeffect/106
        # ナイスダマ
        execute if score @s ui_hpart matches 107..110 run function ui:tmw/237/projectile/killeffect/107.110
        # ミサイル投下
        execute if score @s ui_hpart matches 111 run function ui:tmw/237/projectile/killeffect/111
        # 燃える
        execute if score @s ui_hpart matches 112 run function ui:tmw/237/projectile/killeffect/112
        # ガキンッ
        execute if score @s ui_hpart matches 113 run function ui:tmw/237/projectile/killeffect/113
        # ハンコ
        execute if score @s ui_hpart matches 114 run function ui:tmw/237/projectile/killeffect/114
        # ジェットパック
        execute if score @s ui_hpart matches 115 run function ui:tmw/237/projectile/killeffect/115
        # 古いワード
        execute if score @s ui_hpart matches 116 run function ui:tmw/237/projectile/killeffect/116
        # 古いローラー
        execute if score @s ui_hpart matches 117 run function ui:tmw/237/projectile/killeffect/117
        # 古いジェスター
        execute if score @s ui_hpart matches 118 run function ui:tmw/237/projectile/killeffect/118
        # リフレクトレーザー (最後)
        execute if score @s ui_hpart matches 119 run function ui:tmw/237/projectile/killeffect/119
        # ラピッドショット
        execute if score @s ui_hpart matches 120 run function ui:tmw/237/projectile/killeffect/120
        # リングパルサー
        execute if score @s ui_hpart matches 121 run function ui:tmw/237/projectile/killeffect/121
        # ウルトラバスター
        execute if score @s ui_hpart matches 122..202 run function ui:tmw/237/projectile/killeffect/122
    # スペシャル溜まらない爆発
        execute if score @s ui_hpart matches 203 run function ui:tmw/237/projectile/killeffect/3
        execute if score @s ui_hpart matches 204 run function ui:tmw/237/projectile/killeffect/4
        execute if score @s ui_hpart matches 205 run function ui:tmw/237/projectile/killeffect/5
        execute if score @s ui_hpart matches 206 run function ui:tmw/237/projectile/killeffect/6
        execute if score @s ui_hpart matches 207 run function ui:tmw/237/projectile/killeffect/7
        execute if score @s ui_hpart matches 208 run function ui:tmw/237/projectile/killeffect/8
        execute if score @s ui_hpart matches 209 run function ui:tmw/237/projectile/killeffect/9
        execute if score @s ui_hpart matches 210..219 run function ui:tmw/237/projectile/killeffect/10
        execute if score @s ui_hpart matches 220 run function ui:tmw/237/projectile/killeffect/20
    # スペシャル溜まらない爆発
        #execute if score @s ui_hpart matches 301..400 run data merge storage ui:common {input:{Mode:"create",Var:1}}
        #execute if score @s ui_hpart matches 301..400 run scoreboard players operation $temp ui_temp = @s ui_hpart
        #execute if score @s ui_hpart matches 301..400 store result storage ui:common input.Var int 1 run scoreboard players remove $temp ui_temp 300
        #execute if score @s ui_hpart matches 301..400 run function ui:common/particle
    #
        # マルミサ
        execute if score @s ui_hpart matches 221..401 run function ui:tmw/237/projectile/killeffect/401
        # バウンシー
        execute if score @s ui_hpart matches 402..404 run function ui:tmw/237/projectile/killeffect/404
        execute if score @s ui_hpart matches 404 run function ui:tmw/237/projectile/killeffect/404
        execute if score @s ui_hpart matches 405 run function ui:tmw/237/projectile/killeffect/405
        execute if score @s ui_hpart matches 406 run function ui:tmw/237/projectile/killeffect/406
        execute if score @s ui_hpart matches 407 run function ui:tmw/237/projectile/killeffect/407
        execute if score @s ui_hpart matches 408 run function ui:tmw/237/projectile/killeffect/408
        execute if score @s ui_hpart matches 409 run function ui:tmw/237/projectile/killeffect/409
        execute if score @s ui_hpart matches 410 run function ui:tmw/237/projectile/killeffect/410
        # ガチホコもどき
        execute if score @s ui_hpart matches 411 run function ui:tmw/237/projectile/killeffect/411
        # ヴァンガード - デッドリーチャージ
        execute if score @s ui_hpart matches 412 run function ui:tmw/237/projectile/killeffect/412/
        # モジュール - 爆裂インク
        execute if score @s ui_hpart matches 413..500 run function ui:tmw/237/projectile/killeffect/413
        # 可変爆発
        execute if score @s ui_hpart matches 501 run function ui:tmw/237/projectile/killeffect/501
        # 可変塗り
        execute if score @s ui_hpart matches 502 run function ui:tmw/237/projectile/killeffect/502
        # ダメージ可変爆発
        execute if score @s ui_hpart matches 506..510 unless score @s ui_expdmg_n matches 0.. run scoreboard players operation @s ui_expdmg_n = @s ui_expdmg
        execute if score @s ui_hpart matches 506..510 unless score @s ui_expdmg_f matches 0.. run scoreboard players operation @s ui_expdmg_f = @s ui_expdmg
        execute if score @s ui_hpart matches 503 run function ui:tmw/237/projectile/killeffect/503
        execute if score @s ui_hpart matches 504 run function ui:tmw/237/projectile/killeffect/504
        execute if score @s ui_hpart matches 505 run function ui:tmw/237/projectile/killeffect/505
        execute if score @s ui_hpart matches 506 run function ui:tmw/237/projectile/killeffect/506
        execute if score @s ui_hpart matches 507 run function ui:tmw/237/projectile/killeffect/507
        execute if score @s ui_hpart matches 508 run function ui:tmw/237/projectile/killeffect/508
        execute if score @s ui_hpart matches 509 run function ui:tmw/237/projectile/killeffect/509
        execute if score @s ui_hpart matches 510 run function ui:tmw/237/projectile/killeffect/510

# その他
    execute if score @s ui_hpart matches ..200 as @a if score @s ui_id = $id ui_temp run function ui:tmw/237/misc/player_paint
    execute if score @s ui_hpart matches 201.. as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_s_paint += $paint ui_temp

# キル
    kill @s

# 一時タグ削除
    tag @s remove ui_temp_this
    tag @e[tag=ui_temp_team] remove ui_temp_team

#
    scoreboard players reset $subdamage ui_temp