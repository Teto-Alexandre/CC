scoreboard players operation $old ui_temp = $rand ui_calc1

scoreboard players set $mod ui_calc1 28
function ui:common/rand

execute if score $qf ui_temp matches 3 if score $rand ui_calc1 matches 4 run function ui:common/rand
execute if score $qf ui_temp matches 3 if score $rand ui_calc1 matches 4 run function ui:common/rand

execute if score $rand ui_calc1 matches 0 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 151
execute if score $rand ui_calc1 matches 1 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 152
execute if score $rand ui_calc1 matches 2 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 251
execute if score $rand ui_calc1 matches 3 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 252
execute if score $rand ui_calc1 matches 4 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 253
execute if score $rand ui_calc1 matches 5 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 254
execute if score $rand ui_calc1 matches 6 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 255
execute if score $rand ui_calc1 matches 7 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 256
execute if score $rand ui_calc1 matches 8 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 257
execute if score $rand ui_calc1 matches 9 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 351
execute if score $rand ui_calc1 matches 10 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 451
execute if score $rand ui_calc1 matches 11 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 452
execute if score $rand ui_calc1 matches 12 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 453
execute if score $rand ui_calc1 matches 13 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 454
execute if score $rand ui_calc1 matches 14 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 455
execute if score $rand ui_calc1 matches 15 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 456
execute if score $rand ui_calc1 matches 16 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 457
execute if score $rand ui_calc1 matches 17 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 458
execute if score $rand ui_calc1 matches 18 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 459
execute if score $rand ui_calc1 matches 19 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 460
execute if score $rand ui_calc1 matches 20 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 461
execute if score $rand ui_calc1 matches 21 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 154
execute if score $rand ui_calc1 matches 22 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 462
execute if score $rand ui_calc1 matches 23 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 155
execute if score $rand ui_calc1 matches 24 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 352
execute if score $rand ui_calc1 matches 25 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 259
execute if score $rand ui_calc1 matches 26 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 463
execute if score $rand ui_calc1 matches 27 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 353

execute if score $rand ui_calc1 matches 0 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "トルネード"
execute if score $rand ui_calc1 matches 1 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "アメフラシ"
execute if score $rand ui_calc1 matches 2 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "ノヴァ"
execute if score $rand ui_calc1 matches 3 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "スーパースター"
execute if score $rand ui_calc1 matches 4 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "ボムラッシュ"
execute if score $rand ui_calc1 matches 5 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "インクリメント"
execute if score $rand ui_calc1 matches 6 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "レーダー"
execute if score $rand ui_calc1 matches 7 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "スーパーチャクチ"
execute if score $rand ui_calc1 matches 8 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "サヴァイブ"
execute if score $rand ui_calc1 matches 9 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "メガホンレーザー"
execute if score $rand ui_calc1 matches 10 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "スーパーショット"
execute if score $rand ui_calc1 matches 11 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "マルチミサイル"
execute if score $rand ui_calc1 matches 12 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "セプタングル"
execute if score $rand ui_calc1 matches 13 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "ハイドロポンプ"
execute if score $rand ui_calc1 matches 14 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "ジェットパック"
execute if score $rand ui_calc1 matches 15 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "バウンシーボム"
execute if score $rand ui_calc1 matches 16 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "トリプルトルネード"
execute if score $rand ui_calc1 matches 17 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "ウルトラショット"
execute if score $rand ui_calc1 matches 18 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "ロケッティア"
execute if score $rand ui_calc1 matches 19 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "ナイスダマ"
execute if score $rand ui_calc1 matches 20 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "ウルトラハンコ"
execute if score $rand ui_calc1 matches 21 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "ガトリングタレット"
execute if score $rand ui_calc1 matches 22 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "トライスプレッダー"
execute if score $rand ui_calc1 matches 23 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "エナジースタンド"
execute if score $rand ui_calc1 matches 24 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "グレートバリア"
execute if score $rand ui_calc1 matches 25 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "アウェイクパワー"
execute if score $rand ui_calc1 matches 26 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "リフレクトレーザー"
execute if score $rand ui_calc1 matches 27 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "イルカライド"

execute if score $old ui_temp = $rand ui_calc1 run function ui:template/inventory/random/dub_sp_library
