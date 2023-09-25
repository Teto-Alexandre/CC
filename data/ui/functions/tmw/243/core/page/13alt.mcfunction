# データ読み取り

    ## スペ: 151:トルネード, 152:アメフラシ, 154:ガトタレ, 155:エナスタ, 156:ホップソナー, 171:スプラッシュトルネード
    ##     : 251:ノヴァ, 252:スーパースター, 253:サブ減, 254:インク, 255:レーダー, 256:チャクチ
    ##     : 257:サヴァ, 258:リゲイン, 259:アウェイクパワー
    ##     : 351:メガホン, 352:グレートバリア, 353:イルカライド
    ##     : 451:スパショ, 452:ミサイル, 453:セプタ, 454:ハイドロ, 455:ジェッパ, 456:バウンシー
    ##     : 457:トリトル, 458:ウルショ, 459:ロケッティア, 460:ナイスダマ, 461:ハンコ, 462:トライ, 463:リフレクト, 464:キューインキ

# スロットが空白ならボタンが押されたと判断する＋changedを1に
    scoreboard players set $changed ui_temp 0
    data merge storage ui:common {input:{Mode:"check"}}
    function ui:common/ender
    execute if score $slot ui_temp matches 2 run scoreboard players set $sub ui_temp 464
    execute if score $slot ui_temp matches 19 run scoreboard players set $page ui_temp 2
    execute if score $slot ui_temp matches 26 run scoreboard players set $page ui_temp 0
    execute if score $slot ui_temp matches 1.. run scoreboard players set $changed ui_temp 1

# 名前を入力
    execute if score $slot ui_temp matches 2 run data modify storage ui:gun temp.tmw.gun.SubName set value "キューインキ"

# 逆変換
    execute if score $changed ui_temp matches 1 run function ui:tmw/243/core/changed
    data remove storage ui:gun temp

# メニュー表示
    function ui:tmw/243/core/panel/13

# 発光表示
    execute if score $sp ui_temp matches 464 run item modify entity @s enderchest.2 ui:gun/add_glow

# 変更した
    scoreboard players set $success ui_temp 1