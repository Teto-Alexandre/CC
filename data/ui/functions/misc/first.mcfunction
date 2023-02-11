#> ui:misc/first
#
# tickの最初に実行
#
# 常時監視するスコアをリセットする
#
# @public

# Tickの最初にやること

##鯖から抜けてた人対策
    execute as @a[scores={ui_lg=1..}] run function ui:misc/leave_game

##メニューキル
    kill @e[type=item,nbt={Item:{tag:{ui:{ismenu:1}}}}]

##モーションスライムキル
    execute if score $motionslime ui_world matches 1 run function ui:misc/kill_slime
