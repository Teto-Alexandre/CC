# データ読み取り

    ## スペ: 151:トルネード, 152:アメフラシ
    ##     : 251:ノヴァ, 252:スーパースター, 253:サブ減, 254:インク, 255:レーダー, 256:チャクチ
    ##     : 257:サヴァ
    ##     : 351:メガホン
    ##     : 451:スパショ, 452:ミサイル, 453:トライ, 454:ハイドロ, 455:ジェッパ

# スロットが空白ならボタンが押されたと判断する＋changedを1に
    scoreboard players set $changed ui_temp 0
    data merge storage ui:common {input:{Mode:"check"}}
    function ui:common/ender
    execute if score $slot ui_temp matches 2 run scoreboard players set $sp ui_temp 151
    execute if score $slot ui_temp matches 3 run scoreboard players set $sp ui_temp 152
    execute if score $slot ui_temp matches 4 run scoreboard players set $sp ui_temp 251
    execute if score $slot ui_temp matches 5 run scoreboard players set $sp ui_temp 252
    execute if score $slot ui_temp matches 6 run scoreboard players set $sp ui_temp 253
    execute if score $slot ui_temp matches 11 run scoreboard players set $sp ui_temp 254
    execute if score $slot ui_temp matches 12 run scoreboard players set $sp ui_temp 255
    execute if score $slot ui_temp matches 13 run scoreboard players set $sp ui_temp 256
    execute if score $slot ui_temp matches 14 run scoreboard players set $sp ui_temp 257
    execute if score $slot ui_temp matches 15 run scoreboard players set $sp ui_temp 258
    execute if score $slot ui_temp matches 20 run scoreboard players set $sp ui_temp 351
    execute if score $slot ui_temp matches 21 run scoreboard players set $sp ui_temp 451
    execute if score $slot ui_temp matches 22 run scoreboard players set $sp ui_temp 452
    execute if score $slot ui_temp matches 23 run scoreboard players set $sp ui_temp 453
    execute if score $slot ui_temp matches 24 run scoreboard players set $sp ui_temp 454
    execute if score $slot ui_temp matches 25 run scoreboard players set $page ui_temp 12
    execute if score $slot ui_temp matches 26 run scoreboard players set $page ui_temp 0
    execute if score $slot ui_temp matches 1.. run scoreboard players set $changed ui_temp 1

# 名前を入力
    execute if score $slot ui_temp matches 2 run data modify storage ui:gun temp.tmw.gun.SPName set value "トルネード"
    execute if score $slot ui_temp matches 3 run data modify storage ui:gun temp.tmw.gun.SPName set value "アメフラシ"
    execute if score $slot ui_temp matches 4 run data modify storage ui:gun temp.tmw.gun.SPName set value "ノヴァ"
    execute if score $slot ui_temp matches 5 run data modify storage ui:gun temp.tmw.gun.SPName set value "スーパースター"
    execute if score $slot ui_temp matches 6 run data modify storage ui:gun temp.tmw.gun.SPName set value "ボムラッシュ"
    execute if score $slot ui_temp matches 11 run data modify storage ui:gun temp.tmw.gun.SPName set value "インクリメント"
    execute if score $slot ui_temp matches 12 run data modify storage ui:gun temp.tmw.gun.SPName set value "レーダー"
    execute if score $slot ui_temp matches 13 run data modify storage ui:gun temp.tmw.gun.SPName set value "スーパーチャクチ"
    execute if score $slot ui_temp matches 14 run data modify storage ui:gun temp.tmw.gun.SPName set value "サヴァイブ"
    execute if score $slot ui_temp matches 15 run data modify storage ui:gun temp.tmw.gun.SPName set value "リゲイン"
    execute if score $slot ui_temp matches 20 run data modify storage ui:gun temp.tmw.gun.SPName set value "メガホンレーザー"
    execute if score $slot ui_temp matches 21 run data modify storage ui:gun temp.tmw.gun.SPName set value "スーパーショット"
    execute if score $slot ui_temp matches 22 run data modify storage ui:gun temp.tmw.gun.SPName set value "マルチミサイル"
    execute if score $slot ui_temp matches 23 run data modify storage ui:gun temp.tmw.gun.SPName set value "セプタングル"
    execute if score $slot ui_temp matches 24 run data modify storage ui:gun temp.tmw.gun.SPName set value "ハイドロポンプ"

# 逆変換
    execute if score $changed ui_temp matches 1 run function ui:tmw/243/core/changed
    data remove storage ui:gun temp

# メニュー表示
    function ui:tmw/243/core/panel/11

# 発光表示
    execute if score $sp ui_temp matches 151 run item modify entity @s enderchest.2 ui:gun/add_glow
    execute if score $sp ui_temp matches 152 run item modify entity @s enderchest.3 ui:gun/add_glow
    execute if score $sp ui_temp matches 251 run item modify entity @s enderchest.4 ui:gun/add_glow
    execute if score $sp ui_temp matches 252 run item modify entity @s enderchest.5 ui:gun/add_glow
    execute if score $sp ui_temp matches 253 run item modify entity @s enderchest.6 ui:gun/add_glow
    execute if score $sp ui_temp matches 254 run item modify entity @s enderchest.11 ui:gun/add_glow
    execute if score $sp ui_temp matches 255 run item modify entity @s enderchest.12 ui:gun/add_glow
    execute if score $sp ui_temp matches 256 run item modify entity @s enderchest.13 ui:gun/add_glow
    execute if score $sp ui_temp matches 257 run item modify entity @s enderchest.14 ui:gun/add_glow
    execute if score $sp ui_temp matches 258 run item modify entity @s enderchest.15 ui:gun/add_glow
    execute if score $sp ui_temp matches 351 run item modify entity @s enderchest.20 ui:gun/add_glow
    execute if score $sp ui_temp matches 451 run item modify entity @s enderchest.21 ui:gun/add_glow
    execute if score $sp ui_temp matches 452 run item modify entity @s enderchest.22 ui:gun/add_glow
    execute if score $sp ui_temp matches 453 run item modify entity @s enderchest.23 ui:gun/add_glow
    execute if score $sp ui_temp matches 454 run item modify entity @s enderchest.24 ui:gun/add_glow

# 変更した
    scoreboard players set $success ui_temp 1