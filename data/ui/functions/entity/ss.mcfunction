# SSロジック

# ID コントロール上の未実行タグを更新、付与する
    tag @e[tag=entity_ss_clocker] remove entity_ss_clocker
    tag @e[tag=entity.core] add entity_ss_clocker

# コントロールを実行
    execute as @e[limit=1,tag=entity_ss_clocker] run function ui:entity/idc

# SSロジック維持
    execute if entity @e[tag=entity.core] run schedule function ui:entity/ss 1t append