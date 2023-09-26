# 射程うんぬん
    scoreboard players remove @s ui_temp 10
    scoreboard players add @s ui_br_temp 1

# ダメージ
    execute unless entity @s[tag=tmw_237_proj_del] positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit

# 移動と反射コモン
    teleport @s ^ ^ ^0.5
    execute if score $sub102 ui_temp matches 1 as @s[tag=!ui_refd] at @s run function ui:tmw/214/ref_common
    execute if score $sub112 ui_temp matches 1 run function ui:tmw/237/projectile/acc
    execute if score $sub352 ui_temp matches 1 run function ui:tmw/237/projectile/hitbox
    execute if score $sub464 ui_temp matches 1 run function ui:tmw/237/projectile/inkvac

# 貫通リセット
    execute if entity @s[tag=Pierce,tag=tmw_237_pierce_attacked,tag=!tmw_237_pierce_unattacked] run tag @s remove tmw_237_pierce_attacked
    execute if entity @e[tag=tmw_237_pierce_hit,tag=!tmw_237_pierce_unhit] run tag @e[tag=tmw_237_pierce_hit,tag=!tmw_237_pierce_unhit] remove tmw_237_pierce_hit
    tag @s[tag=tmw_237_pierce_unattacked] remove tmw_237_pierce_unattacked
    tag @e[tag=tmw_237_pierce_unhit] remove tmw_237_pierce_unhit

# 塗り値を初期化
    scoreboard players set $paint ui_temp 0

# 壁接触判定
    execute unless block ~ ~ ~ #ui:nocol run tag @s add tmw_237_proj_del
    execute if block ~ ~ ~ #ui:liq run tag @s add tmw_237_proj_del
    execute unless entity @s[tag=tmw_237_proj_del] positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=ui_17_3] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=ui_17_3] run tag @s add tmw_237_proj_del

# 見た目
    execute if score @s ui_bpart matches -2 run function ui:tmw/237/projectile/move/-2
    execute if score @s ui_bpart matches 1 run function ui:tmw/237/projectile/move/1
    execute if score @s ui_bpart matches 2 run function ui:tmw/237/projectile/move/2
    execute if score @s ui_bpart matches 3 run function ui:tmw/237/projectile/move/3
    execute if score @s ui_bpart matches 4 run function ui:tmw/237/projectile/move/4
    execute if score @s ui_bpart matches 5 run function ui:tmw/237/projectile/move/5
    execute if score @s ui_bpart matches 6 run function ui:tmw/237/projectile/move/6
    execute if score @s ui_bpart matches 7 run function ui:tmw/237/projectile/move/7
    execute if score @s ui_bpart matches 8 run function ui:tmw/237/projectile/move/8
    execute if score @s ui_bpart matches 9 run function ui:tmw/237/projectile/move/9
    #エルドアンカー
    execute if score @s ui_bpart matches 10 run function ui:tmw/237/projectile/move/10
    #ストライク横
    execute if score @s ui_bpart matches 11 run function ui:tmw/237/projectile/move/11
    #ストライク縦
    execute if score @s ui_bpart matches 12 run function ui:tmw/237/projectile/move/12
    #バウンド小弾
    execute if score @s ui_bpart matches 13 run function ui:tmw/237/projectile/move/13
    #洗濯機
    execute if score @s ui_bpart matches 14 run function ui:tmw/237/projectile/move/14
    #ゲテルスピンギア（確率塗り小弾）
    execute if score @s ui_bpart matches 15 run function ui:tmw/237/projectile/move/15
    #リッター弱
    execute if score @s ui_bpart matches 16 run function ui:tmw/237/projectile/move/16
    #ミアレアンカー
    execute if score @s ui_bpart matches 17 run function ui:tmw/237/projectile/move/17
    # ストライク近接
    execute if score @s ui_bpart matches 18 run function ui:tmw/237/projectile/move/12.2
    execute if score @s ui_bpart matches 21 run function ui:tmw/237/projectile/move/21
    # 新アンカー近接
    execute if score @s ui_bpart matches 23 run function ui:tmw/237/projectile/move/23
    execute if score @s ui_bpart matches 24 run function ui:tmw/237/projectile/move/23.2
    execute if score @s ui_bpart matches 101 run function ui:tmw/237/projectile/move/101
    execute if score @s ui_bpart matches 102 run function ui:tmw/237/projectile/move/102
    execute if score @s ui_bpart matches 103 run function ui:tmw/237/projectile/move/103
    execute if score @s ui_bpart matches 104 run function ui:tmw/237/projectile/move/104
    execute if score @s ui_bpart matches 105 run function ui:tmw/237/projectile/move/105
    execute if score @s ui_bpart matches 106 run function ui:tmw/237/projectile/move/106
    execute if score @s ui_bpart matches 107 run function ui:tmw/237/projectile/move/107
    execute if score @s ui_bpart matches 109 run function ui:tmw/237/projectile/move/109
    #ペネ
    execute if score @s ui_bpart matches 108 run function ui:tmw/237/projectile/move/108/manager
    execute if score @s ui_bpart matches 112 run function ui:tmw/237/projectile/move/112
    #ガト
    execute if score @s ui_bpart matches 113 run function ui:tmw/237/projectile/move/113
    #カウンター
    execute if score @s ui_bpart matches 114 run function ui:tmw/237/projectile/move/4
    #ムーブテスト
    execute if score @s ui_bpart matches 115 run function ui:tmw/237/projectile/move/115
    #キューインキ
    execute if score @s ui_bpart matches 116 run function ui:tmw/237/projectile/move/116
    execute unless score @s ui_bpart matches 104 unless score @s ui_bpart matches 113 as @a if score @s ui_id = $id ui_temp run function ui:tmw/237/misc/player_paint
    execute if score @s ui_bpart matches 104 as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_s_paint += $paint ui_temp
    execute if score @s ui_bpart matches 113 as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_s_paint += $paint.total ui_temp

# タグ除去
    tag @e[tag=tmw_237_hit_at_this_move] remove tmw_237_hit_at_this_move

# 移動値が無くなるまで繰り返す
    execute as @s[scores={ui_temp=10..},tag=!ui_proj_common_nocol,tag=!ui_proj_common_hit,tag=!ui_temp_col] if score @s ui_br_temp < @s ui_br at @s run function ui:tmw/237/projectile/move