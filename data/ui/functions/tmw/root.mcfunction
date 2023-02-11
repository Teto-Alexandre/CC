#> ui:tmw/root
#
# 全てのマジックアイテムの「基本動作」を司るエンジン
#
# 「新規アイテム作成時」はここに「追記」すること
#
# @public

# ユニークアイテムの装備時の諸々の能力
    #ペイントガン
        execute if entity @a[scores={ui_tmw_id=237}] run function ui:tmw/237/lim
    #マップ編集
        execute if entity @a[scores={ui_tmw_id=260}] run function ui:tmw/260/lim