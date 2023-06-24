# データ読み取り

# スロットが空白ならボタンが押されたと判断する＋changedを1に
    scoreboard players set $changed ui_temp 0
    data merge storage ui:common {input:{Mode:"check"}}
    function ui:common/ender
    execute if score $slot ui_temp matches 2 run scoreboard players set $sp ui_temp 101
    execute if score $slot ui_temp matches 3 run scoreboard players set $sp ui_temp 102
    execute if score $slot ui_temp matches 4 run scoreboard players set $sp ui_temp 103
    execute if score $slot ui_temp matches 5 run scoreboard players set $sp ui_temp 104
    execute if score $slot ui_temp matches 6 run scoreboard players set $sp ui_temp 105
    execute if score $slot ui_temp matches 11 run scoreboard players set $sp ui_temp 106
    execute if score $slot ui_temp matches 12 run scoreboard players set $sp ui_temp 107
    execute if score $slot ui_temp matches 13 run scoreboard players set $sp ui_temp 108
    execute if score $slot ui_temp matches 14 run scoreboard players set $sp ui_temp 109
    execute if score $slot ui_temp matches 15 run scoreboard players set $sp ui_temp 110
    execute if score $slot ui_temp matches 20 run scoreboard players set $sp ui_temp 111
    execute if score $slot ui_temp matches 21 run scoreboard players set $sp ui_temp 112
    execute if score $slot ui_temp matches 22 run scoreboard players set $sp ui_temp 113
    execute if score $slot ui_temp matches 23 run scoreboard players set $sp ui_temp 114
    execute if score $slot ui_temp matches 24 run scoreboard players set $sp ui_temp 115
    execute if score $slot ui_temp matches 25 run scoreboard players set $page ui_temp 12
    execute if score $slot ui_temp matches 26 run scoreboard players set $page ui_temp 0
    execute if score $slot ui_temp matches 1.. run scoreboard players set $changed ui_temp 1

# 名前を入力
    execute if score $slot ui_temp matches 2 run data modify storage ui:gun temp.tmw.gun.SPName set value "スプラッシュボム"
    execute if score $slot ui_temp matches 3 run data modify storage ui:gun temp.tmw.gun.SPName set value "リフレクター"
    execute if score $slot ui_temp matches 4 run data modify storage ui:gun temp.tmw.gun.SPName set value "クイックボム"
    execute if score $slot ui_temp matches 5 run data modify storage ui:gun temp.tmw.gun.SPName set value "ライトアップ"
    execute if score $slot ui_temp matches 6 run data modify storage ui:gun temp.tmw.gun.SPName set value "レンバクボム"
    execute if score $slot ui_temp matches 11 run data modify storage ui:gun temp.tmw.gun.SPName set value "ナノヒール"
    execute if score $slot ui_temp matches 12 run data modify storage ui:gun temp.tmw.gun.SPName set value "ボルテックス"
    execute if score $slot ui_temp matches 13 run data modify storage ui:gun temp.tmw.gun.SPName set value "キューバンボム"
    execute if score $slot ui_temp matches 14 run data modify storage ui:gun temp.tmw.gun.SPName set value "ポイズンガス"
    execute if score $slot ui_temp matches 15 run data modify storage ui:gun temp.tmw.gun.SPName set value "インスタントシールド"
    execute if score $slot ui_temp matches 20 run data modify storage ui:gun temp.tmw.gun.SPName set value "スプリンクラー"
    execute if score $slot ui_temp matches 21 run data modify storage ui:gun temp.tmw.gun.SPName set value "アクセラレーター"
    execute if score $slot ui_temp matches 22 run data modify storage ui:gun temp.tmw.gun.SPName set value "ロボットボム"
    execute if score $slot ui_temp matches 23 run data modify storage ui:gun temp.tmw.gun.SPName set value "カーリングボム"
    execute if score $slot ui_temp matches 24 run data modify storage ui:gun temp.tmw.gun.SPName set value "タンサンボム"

# 逆変換
    execute if score $changed ui_temp matches 1 run function ui:tmw/243/core/changed
    data remove storage ui:gun temp

# メニュー表示
    function ui:tmw/243/core/panel/1

# 発光表示
    execute if score $sp ui_temp matches 101 run item modify entity @s enderchest.2 ui:gun/add_glow
    execute if score $sp ui_temp matches 102 run item modify entity @s enderchest.3 ui:gun/add_glow
    execute if score $sp ui_temp matches 103 run item modify entity @s enderchest.4 ui:gun/add_glow
    execute if score $sp ui_temp matches 104 run item modify entity @s enderchest.5 ui:gun/add_glow
    execute if score $sp ui_temp matches 105 run item modify entity @s enderchest.6 ui:gun/add_glow
    execute if score $sp ui_temp matches 106 run item modify entity @s enderchest.11 ui:gun/add_glow
    execute if score $sp ui_temp matches 107 run item modify entity @s enderchest.12 ui:gun/add_glow
    execute if score $sp ui_temp matches 108 run item modify entity @s enderchest.13 ui:gun/add_glow
    execute if score $sp ui_temp matches 109 run item modify entity @s enderchest.14 ui:gun/add_glow
    execute if score $sp ui_temp matches 110 run item modify entity @s enderchest.15 ui:gun/add_glow
    execute if score $sp ui_temp matches 111 run item modify entity @s enderchest.20 ui:gun/add_glow
    execute if score $sp ui_temp matches 112 run item modify entity @s enderchest.21 ui:gun/add_glow
    execute if score $sp ui_temp matches 113 run item modify entity @s enderchest.22 ui:gun/add_glow
    execute if score $sp ui_temp matches 114 run item modify entity @s enderchest.23 ui:gun/add_glow
    execute if score $sp ui_temp matches 115 run item modify entity @s enderchest.24 ui:gun/add_glow

# 変更した
    scoreboard players set $success ui_temp 1