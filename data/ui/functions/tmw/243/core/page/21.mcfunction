# データ読み取り

    ## サブ: 101:スプラッシュ, 102:リフレク, 103:クイック, 104:ライト, 105:レンバク, 106:リジェネ
    ##     : 107:ボルテク, 108:キューバン, 109:ポイズン, 110:シールド, 111:スプリン, 112:アクセラ
    ##     : 201:リコール
    ##     : 301:トラップ
    ##     : 401:ブロードソード, 402:ヘルハウンド

# スロットが空白ならボタンが押されたと判断する＋changedを1に
    scoreboard players set $changed ui_temp 0
    data merge storage ui:common {input:{Mode:"check"}}
    function ui:common/ender
    #execute if score $slot ui_temp matches 2 run scoreboard players set $sub ui_temp 1011
    #execute if score $slot ui_temp matches 2 run scoreboard players set $sp ui_temp 1012
    execute if score $slot ui_temp matches 26 run scoreboard players set $page ui_temp 0
    execute if score $slot ui_temp matches 1.. run scoreboard players set $changed ui_temp 1

# 名前を入力
    #execute if score $slot ui_temp matches 2 run data modify storage ui:gun temp.tmw.gun.SubName set value "リモートボム"
    #execute if score $slot ui_temp matches 2 run data modify storage ui:gun temp.tmw.gun.SPName set value "リモートボム"

# 逆変換
    execute if score $changed ui_temp matches 1 run function ui:tmw/243/core/changed
    data remove storage ui:gun temp

# メニュー表示
    function ui:tmw/243/core/panel/21

# 変更した
    scoreboard players set $success ui_temp 1