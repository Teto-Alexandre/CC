scoreboard players operation $ink.temp ui_temp = $ink ui_temp
scoreboard players operation $ink.temp ui_temp *= #100 ui_num
scoreboard players operation $ink.temp ui_temp /= $ink.max ui_temp
scoreboard players operation $ink.temp ui_temp < #100 ui_num
scoreboard players operation $ink.temp ui_temp > #0 ui_num

scoreboard players operation $sp.temp ui_temp = @s ui_paint
scoreboard players operation $sp.temp ui_temp *= #100 ui_num
scoreboard players operation $sp.temp ui_temp /= $spneed ui_temp
scoreboard players operation $sp.temp ui_temp < #100 ui_num
scoreboard players operation $sp.temp ui_temp > #0 ui_num

# 旧インク数値
execute if score $text_id ui_temp matches 1 run function ui:tmw/237/title/block/1
# 旧SP数値
execute if score $text_id ui_temp matches 2 run function ui:tmw/237/title/block/2
# 旧インクゲージ
execute if score $text_id ui_temp matches 3 run function ui:tmw/237/title/block/3
# 旧SPゲージ
execute if score $text_id ui_temp matches 4 run function ui:tmw/237/title/block/4
# 半角スペース２つ
execute if score $text_id ui_temp matches 5 run function ui:tmw/237/title/block/5
# 仮想レーダー
execute if score $text_id ui_temp matches 6 run function ui:tmw/237/title/block/6
# サーキュレーター
execute if score $text_id ui_temp matches 7 run function ui:tmw/237/title/block/7
# スピードカバー
execute if score $text_id ui_temp matches 8 run function ui:tmw/237/title/block/8
# サヴァイブ
execute if score $text_id ui_temp matches 9 run function ui:tmw/237/title/block/9
# カウンター
execute if score $text_id ui_temp matches 10 run function ui:tmw/237/title/block/10
# スーパーブースト
execute if score $text_id ui_temp matches 11 run function ui:tmw/237/title/block/11
# 武器チャージタイム
execute if score $text_id ui_temp matches 12 run function ui:tmw/237/title/block/12
# 武器クールタイム（デジ2）
execute if score $text_id ui_temp matches 13 run function ui:tmw/237/title/block/13
