# ウェポン時間経過

tag @s add speedtype_weapon

# ハイジャンプ
    execute if score $activator ui_temp matches 202 run function ui:tmw/237/activator/time/202

# スライド
    execute if score $activator ui_temp matches 203 run function ui:tmw/237/activator/time/203

# ノヴァ
    execute if score $activator ui_temp matches 251 run function ui:tmw/237/activator/time/251

# スーパースター
    execute if score $activator ui_temp matches 252 run function ui:tmw/237/activator/time/252

# チャクチ
    execute if score $activator ui_temp matches 256 run function ui:tmw/237/activator/time/256

# アウェイクパワー
    execute if score $activator ui_temp matches 259 run function ui:tmw/237/activator/time/259

# ミサイル
    execute if score $activator ui_temp matches 452 run function ui:tmw/237/activator/time/452

# セプタングル
    execute if score $activator ui_temp matches 453 run effect give @s resistance 1 0 true

# ハイドロポンプ
    execute if score $activator ui_temp matches 454 run function ui:tmw/237/activator/time/454

# ジェットパック
    execute if score $activator ui_temp matches 455 run function ui:tmw/237/activator/time/455

# 回数使用他
    execute if score $activator ui_temp matches 456..458 run function ui:tmw/237/activator/time/456_

# ロケッティア
    execute if score $activator ui_temp matches 459 run function ui:tmw/237/activator/time/459

# ナイスダマ
    execute if score $activator ui_temp matches 460 run function ui:tmw/237/activator/time/460

# トライスプレッダー
    execute if score $activator ui_temp matches 462 run effect give @s resistance 1 0 true
