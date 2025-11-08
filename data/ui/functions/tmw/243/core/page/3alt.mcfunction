# データ読み取り

# スロットが空白ならボタンが押されたと判断する＋changedを1に
    scoreboard players set $changed ui_temp 0
    data merge storage ui:common {input:{Mode:"check"}}
    function ui:common/ender
    execute if score $slot ui_temp matches 2 run scoreboard players set $sp ui_temp 121
    execute if score $slot ui_temp matches 3 run scoreboard players set $sp ui_temp 205
    execute if score $slot ui_temp matches 4 run scoreboard players set $sp ui_temp 123
    execute if score $slot ui_temp matches 5 run scoreboard players set $sp ui_temp 122
    execute if score $slot ui_temp matches 6 run scoreboard players set $sp ui_temp 124
    execute if score $slot ui_temp matches 11 run scoreboard players set $sp ui_temp 207
    execute if score $slot ui_temp matches 12 run scoreboard players set $sp ui_temp 208

    execute if score $slot ui_temp matches 19 run scoreboard players set $page ui_temp 12
    execute if score $slot ui_temp matches 26 run scoreboard players set $page ui_temp 0
    execute if score $slot ui_temp matches 1.. run scoreboard players set $changed ui_temp 1

# 名前を入力
    execute if score $slot ui_temp matches 2 run data modify storage ui:gun temp.tmw.gun.SPName set value "クイックアーマー"
    execute if score $slot ui_temp matches 3 run data modify storage ui:gun temp.tmw.gun.SPName set value "スピードカバー"
    execute if score $slot ui_temp matches 4 run data modify storage ui:gun temp.tmw.gun.SPName set value "フライングタレット"
    execute if score $slot ui_temp matches 5 run data modify storage ui:gun temp.tmw.gun.SPName set value "ハッキングボム"
    execute if score $slot ui_temp matches 6 run data modify storage ui:gun temp.tmw.gun.SPName set value "テレポートボム"
    execute if score $slot ui_temp matches 11 run data modify storage ui:gun temp.tmw.gun.SPName set value "ヘルハウンドQ"
    execute if score $slot ui_temp matches 12 run data modify storage ui:gun temp.tmw.gun.SPName set value "ブーメランQ"

# 逆変換
    execute if score $changed ui_temp matches 1 run function ui:tmw/243/core/changed
    data remove storage ui:gun temp

# メニュー表示
    function ui:tmw/243/core/panel/3

# 発光表示
    execute if score $sp ui_temp matches 121 run item modify entity @s enderchest.2 ui:gun/add_glow
    execute if score $sp ui_temp matches 205 run item modify entity @s enderchest.3 ui:gun/add_glow

# 変更した
    scoreboard players set $success ui_temp 1