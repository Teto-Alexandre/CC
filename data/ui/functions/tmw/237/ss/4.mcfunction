# 弾丸
    #execute as @e[tag=tmw_237_missile] at @s run function ui:tmw/237/missile/tick

# ID コントロール上の未実行タグを更新、付与する
    tag @e[tag=tmw_237_ss_4_unpower] remove tmw_237_ss_4_unpower
    tag @e[tag=tmw_237_missile] add tmw_237_ss_4_unpower

# コントロールを実行
    execute as @e[limit=1,tag=tmw_237_ss_4_unpower] run function ui:tmw/237/missile/idc

# SSロジック維持
    execute if entity @e[tag=tmw_237_missile] run schedule function ui:tmw/237/ss/4 1t append