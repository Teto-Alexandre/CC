# データ読み取り

# スロットが空白ならボタンが押されたと判断する＋changedを1に
    scoreboard players set $changed ui_temp 0
    data merge storage ui:common {input:{Mode:"check"}}
    function ui:common/ender
    execute if score $slot ui_temp matches 2 run scoreboard players set $sub ui_temp 116
    execute if score $slot ui_temp matches 3 run scoreboard players set $sub ui_temp 201
    execute if score $slot ui_temp matches 4 run scoreboard players set $sub ui_temp 202
    execute if score $slot ui_temp matches 5 run scoreboard players set $sub ui_temp 301
    execute if score $slot ui_temp matches 6 run scoreboard players set $sub ui_temp 401
    execute if score $slot ui_temp matches 11 run scoreboard players set $sub ui_temp 402
    execute if score $slot ui_temp matches 12 run scoreboard players set $sub ui_temp 206
    execute if score $slot ui_temp matches 13 run scoreboard players set $sub ui_temp 404
    execute if score $slot ui_temp matches 14 run scoreboard players set $sub ui_temp 405
    execute if score $slot ui_temp matches 15 run scoreboard players set $sub ui_temp 203
    execute if score $slot ui_temp matches 20 run scoreboard players set $sub ui_temp 117
    execute if score $slot ui_temp matches 21 run scoreboard players set $sub ui_temp 118
    execute if score $slot ui_temp matches 22 run scoreboard players set $sub ui_temp 119
    execute if score $slot ui_temp matches 23 run scoreboard players set $sub ui_temp 120
    execute if score $slot ui_temp matches 24 run scoreboard players set $sub ui_temp 204

    execute if score $slot ui_temp matches 19 run scoreboard players set $page ui_temp 1
    execute if score $slot ui_temp matches 25 run scoreboard players set $page ui_temp 3
    execute if score $slot ui_temp matches 26 run scoreboard players set $page ui_temp 0
    execute if score $slot ui_temp matches 1.. run scoreboard players set $changed ui_temp 1

# 名前を入力
    execute if score $slot ui_temp matches 2 run data modify storage ui:gun temp.tmw.gun.SubName set value "インクタレット"
    execute if score $slot ui_temp matches 3 run data modify storage ui:gun temp.tmw.gun.SubName set value "リコール"
    execute if score $slot ui_temp matches 4 run data modify storage ui:gun temp.tmw.gun.SubName set value "ハイジャンプ"
    execute if score $slot ui_temp matches 5 run data modify storage ui:gun temp.tmw.gun.SubName set value "トラップ"
    execute if score $slot ui_temp matches 6 run data modify storage ui:gun temp.tmw.gun.SubName set value "ブロードソード"
    execute if score $slot ui_temp matches 11 run data modify storage ui:gun temp.tmw.gun.SubName set value "ヘルハウンド"
    execute if score $slot ui_temp matches 12 run data modify storage ui:gun temp.tmw.gun.SubName set value "ラインマーカー"
    execute if score $slot ui_temp matches 13 run data modify storage ui:gun temp.tmw.gun.SubName set value "ブーメラン"
    execute if score $slot ui_temp matches 14 run data modify storage ui:gun temp.tmw.gun.SubName set value "ペネトレイター"
    execute if score $slot ui_temp matches 15 run data modify storage ui:gun temp.tmw.gun.SubName set value "スライド"
    execute if score $slot ui_temp matches 20 run data modify storage ui:gun temp.tmw.gun.SubName set value "チョコレートボムB"
    execute if score $slot ui_temp matches 21 run data modify storage ui:gun temp.tmw.gun.SubName set value "チョコレートボムW"
    execute if score $slot ui_temp matches 22 run data modify storage ui:gun temp.tmw.gun.SubName set value "キューバンライト"
    execute if score $slot ui_temp matches 23 run data modify storage ui:gun temp.tmw.gun.SubName set value "クイックヒール"
    execute if score $slot ui_temp matches 24 run data modify storage ui:gun temp.tmw.gun.SubName set value "サーキュレーター"

# 逆変換
    execute if score $changed ui_temp matches 1 run function ui:tmw/243/core/changed
    data remove storage ui:gun temp

# メニュー表示
    function ui:tmw/243/core/panel/2

# 発光表示
    execute if score $sub ui_temp matches 116 run item modify entity @s enderchest.2 ui:gun/add_glow
    execute if score $sub ui_temp matches 201 run item modify entity @s enderchest.3 ui:gun/add_glow
    execute if score $sub ui_temp matches 202 run item modify entity @s enderchest.4 ui:gun/add_glow
    execute if score $sub ui_temp matches 301 run item modify entity @s enderchest.5 ui:gun/add_glow
    execute if score $sub ui_temp matches 401 run item modify entity @s enderchest.6 ui:gun/add_glow
    execute if score $sub ui_temp matches 402 run item modify entity @s enderchest.11 ui:gun/add_glow
    execute if score $sub ui_temp matches 403 run item modify entity @s enderchest.12 ui:gun/add_glow
    execute if score $sub ui_temp matches 404 run item modify entity @s enderchest.13 ui:gun/add_glow
    execute if score $sub ui_temp matches 405 run item modify entity @s enderchest.14 ui:gun/add_glow
    execute if score $sub ui_temp matches 203 run item modify entity @s enderchest.15 ui:gun/add_glow
    execute if score $sub ui_temp matches 117 run item modify entity @s enderchest.20 ui:gun/add_glow
    execute if score $sub ui_temp matches 118 run item modify entity @s enderchest.21 ui:gun/add_glow
    execute if score $sub ui_temp matches 119 run item modify entity @s enderchest.22 ui:gun/add_glow
    execute if score $sub ui_temp matches 120 run item modify entity @s enderchest.23 ui:gun/add_glow
    execute if score $sub ui_temp matches 204 run item modify entity @s enderchest.24 ui:gun/add_glow

# 変更した
    scoreboard players set $success ui_temp 1