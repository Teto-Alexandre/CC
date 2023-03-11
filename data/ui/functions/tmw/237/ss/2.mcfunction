# 弾丸
    #execute as @e[tag=tmw_237_sub] at @s run function ui:tmw/237/sub/tick

# ID コントロール上の未実行タグを更新、付与する
    tag @e[tag=tmw_237_ss_2_unpower] remove tmw_237_ss_2_unpower
    tag @e[tag=tmw_237_sub] add tmw_237_ss_2_unpower

# コントロールを実行
    execute as @e[limit=1,tag=tmw_237_ss_2_unpower] run function ui:tmw/237/sub/idc

# SSロジック維持
    execute if entity @e[tag=tmw_237_sub] run schedule function ui:tmw/237/ss/2 1t append