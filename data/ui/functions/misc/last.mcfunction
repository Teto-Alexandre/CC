#> ui:misc/last
#
# tickの最後に実行
#
# 常時監視するスコアをリセットする
#
# @public

# Tickの最後にやること

    ## 操作要件リセット
        execute as @a[tag=tmw_use_c] run function ui:misc/act/uc.rst
        execute as @a[scores={ui_di=1..}] run function ui:misc/act/di
        execute as @a[scores={ui_use2_tc=1..}] run function ui:misc/act/uc.c
        execute as @a[scores={ui_use1=1..}] run function ui:misc/act/uc
        tag @a[tag=tmw_oh_n] remove tmw_oh_n
        tag @a[tag=tmw_oh_s] remove tmw_oh_s

    ## 次tick用の手に何も持ってない検知
        tag @a[tag=tmw_mh_calc] remove tmw_mh_calc
        execute as @a[nbt=!{SelectedItem:{}}] run tag @s add tmw_mh_calc
        tag @a[tag=tmw_oh_calc] remove tmw_oh_calc
        execute as @a[nbt=!{Inventory:[{Slot:-106b}]}] run tag @s add tmw_oh_calc

    ## TMWのidを保存
        execute as @a run scoreboard players operation @s ui_tmw_id_old = @s ui_tmw_id
        execute as @a run scoreboard players operation @s ui_tmw_id_old2 = @s ui_tmw_id2

    ## スニークチャージ用カウントアップ
        scoreboard players add @a[scores={ui_st=1..}] ui_st2 1
        scoreboard players set @a[scores={ui_st=..0}] ui_st2 0
        scoreboard players set @a[scores={ui_st=1..}] ui_st 0
