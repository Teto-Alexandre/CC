# 軌道変更要素の有無を調べる
    #リフレクター他
    scoreboard players reset $sub102 ui_temp
    execute if entity @e[tag=ui_c_ref] run scoreboard players set $sub102 ui_temp 1
    #アクセラレーター
    scoreboard players reset $sub112 ui_temp
    execute if entity @e[tag=ui_c_acc] run scoreboard players set $sub112 ui_temp 1
    #アクセラレーター
    scoreboard players reset $sub352 ui_temp
    execute if entity @e[tag=ui_c_hitbox] run scoreboard players set $sub352 ui_temp 1

# ID コントロール上の未実行タグを更新、付与する
    tag @e[tag=tmw_237_ss_1_unpower] remove tmw_237_ss_1_unpower
    tag @e[tag=tmw_237] add tmw_237_ss_1_unpower

# コントロールを実行
    execute as @e[limit=1,tag=tmw_237_ss_1_unpower] run function ui:tmw/237/projectile/idc

# SSロジック維持
    execute if entity @e[tag=tmw_237] run schedule function ui:tmw/237/ss/1 1t append