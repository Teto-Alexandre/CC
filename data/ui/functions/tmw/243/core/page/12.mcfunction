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
    execute if score $slot ui_temp matches 2 run scoreboard players set $sp ui_temp 455
    execute if score $slot ui_temp matches 3 run scoreboard players set $sp ui_temp 456
    execute if score $slot ui_temp matches 4 run scoreboard players set $sp ui_temp 457
    execute if score $slot ui_temp matches 5 run scoreboard players set $sp ui_temp 458
    execute if score $slot ui_temp matches 6 run scoreboard players set $sp ui_temp 459
    execute if score $slot ui_temp matches 11 run scoreboard players set $sp ui_temp 460
    execute if score $slot ui_temp matches 12 run scoreboard players set $sp ui_temp 461
    execute if score $slot ui_temp matches 13 run scoreboard players set $sp ui_temp 154
    execute if score $slot ui_temp matches 14 run scoreboard players set $sp ui_temp 462
    execute if score $slot ui_temp matches 15 run scoreboard players set $sp ui_temp 155
    execute if score $slot ui_temp matches 20 run scoreboard players set $sp ui_temp 352
    execute if score $slot ui_temp matches 21 run scoreboard players set $sp ui_temp 259
    execute if score $slot ui_temp matches 22 run scoreboard players set $sp ui_temp 463
    execute if score $slot ui_temp matches 19 run scoreboard players set $page ui_temp 11
    execute if score $slot ui_temp matches 26 run scoreboard players set $page ui_temp 0
    execute if score $slot ui_temp matches 1.. run scoreboard players set $changed ui_temp 1

# 名前を入力
    execute if score $slot ui_temp matches 2 run data modify storage ui:gun temp.tmw.gun.SPName set value "ジェットパック"
    execute if score $slot ui_temp matches 3 run data modify storage ui:gun temp.tmw.gun.SPName set value "バウンシーボム"
    execute if score $slot ui_temp matches 4 run data modify storage ui:gun temp.tmw.gun.SPName set value "トリプルトルネード"
    execute if score $slot ui_temp matches 5 run data modify storage ui:gun temp.tmw.gun.SPName set value "ウルトラショット"
    execute if score $slot ui_temp matches 6 run data modify storage ui:gun temp.tmw.gun.SPName set value "ロケッティア"
    execute if score $slot ui_temp matches 11 run data modify storage ui:gun temp.tmw.gun.SPName set value "ナイスダマ"
    execute if score $slot ui_temp matches 12 run data modify storage ui:gun temp.tmw.gun.SPName set value "ウルトラハンコ"
    execute if score $slot ui_temp matches 13 run data modify storage ui:gun temp.tmw.gun.SPName set value "ガトリングタレット"
    execute if score $slot ui_temp matches 14 run data modify storage ui:gun temp.tmw.gun.SPName set value "トライスプレッダー"
    execute if score $slot ui_temp matches 15 run data modify storage ui:gun temp.tmw.gun.SPName set value "エナジースタンド"
    execute if score $slot ui_temp matches 20 run data modify storage ui:gun temp.tmw.gun.SPName set value "グレートバリア"
    execute if score $slot ui_temp matches 21 run data modify storage ui:gun temp.tmw.gun.SPName set value "アウェイクパワー"
    execute if score $slot ui_temp matches 22 run data modify storage ui:gun temp.tmw.gun.SPName set value "リフレクトレーザー"

# 逆変換
    execute if score $changed ui_temp matches 1 run function ui:tmw/243/core/changed
    data remove storage ui:gun temp

# メニュー表示
    function ui:tmw/243/core/panel/12

# 発光表示
    execute if score $sp ui_temp matches 455 run item modify entity @s enderchest.2 ui:gun/add_glow
    execute if score $sp ui_temp matches 456 run item modify entity @s enderchest.3 ui:gun/add_glow
    execute if score $sp ui_temp matches 457 run item modify entity @s enderchest.4 ui:gun/add_glow
    execute if score $sp ui_temp matches 458 run item modify entity @s enderchest.5 ui:gun/add_glow
    execute if score $sp ui_temp matches 459 run item modify entity @s enderchest.6 ui:gun/add_glow
    execute if score $sp ui_temp matches 460 run item modify entity @s enderchest.11 ui:gun/add_glow
    execute if score $sp ui_temp matches 461 run item modify entity @s enderchest.12 ui:gun/add_glow
    execute if score $sp ui_temp matches 154 run item modify entity @s enderchest.13 ui:gun/add_glow
    execute if score $sp ui_temp matches 462 run item modify entity @s enderchest.14 ui:gun/add_glow
    execute if score $sp ui_temp matches 155 run item modify entity @s enderchest.15 ui:gun/add_glow
    execute if score $sp ui_temp matches 352 run item modify entity @s enderchest.20 ui:gun/add_glow
    execute if score $sp ui_temp matches 259 run item modify entity @s enderchest.21 ui:gun/add_glow
    execute if score $sp ui_temp matches 463 run item modify entity @s enderchest.22 ui:gun/add_glow

# 変更した
    scoreboard players set $success ui_temp 1