scoreboard players set $mod ui_calc1 25
function ui:common/rand

execute if score $qf ui_temp matches 3 if score $rand ui_calc1 matches 4 run function ui:common/rand
execute if score $qf ui_temp matches 3 if score $rand ui_calc1 matches 4 run function ui:common/rand

execute if score $rand ui_calc1 matches 0 run data modify storage ui:common input.Item.tag.tmw.gun.SPType set value 151
execute if score $rand ui_calc1 matches 1 run data modify storage ui:common input.Item.tag.tmw.gun.SPType set value 152
execute if score $rand ui_calc1 matches 2 run data modify storage ui:common input.Item.tag.tmw.gun.SPType set value 251
execute if score $rand ui_calc1 matches 3 run data modify storage ui:common input.Item.tag.tmw.gun.SPType set value 252
execute if score $rand ui_calc1 matches 4 run data modify storage ui:common input.Item.tag.tmw.gun.SPType set value 253
execute if score $rand ui_calc1 matches 5 run data modify storage ui:common input.Item.tag.tmw.gun.SPType set value 254
execute if score $rand ui_calc1 matches 6 run data modify storage ui:common input.Item.tag.tmw.gun.SPType set value 255
execute if score $rand ui_calc1 matches 7 run data modify storage ui:common input.Item.tag.tmw.gun.SPType set value 256
execute if score $rand ui_calc1 matches 8 run data modify storage ui:common input.Item.tag.tmw.gun.SPType set value 257
execute if score $rand ui_calc1 matches 9 run data modify storage ui:common input.Item.tag.tmw.gun.SPType set value 351
execute if score $rand ui_calc1 matches 10 run data modify storage ui:common input.Item.tag.tmw.gun.SPType set value 451
execute if score $rand ui_calc1 matches 11 run data modify storage ui:common input.Item.tag.tmw.gun.SPType set value 452
execute if score $rand ui_calc1 matches 12 run data modify storage ui:common input.Item.tag.tmw.gun.SPType set value 453
execute if score $rand ui_calc1 matches 13 run data modify storage ui:common input.Item.tag.tmw.gun.SPType set value 454
execute if score $rand ui_calc1 matches 14 run data modify storage ui:common input.Item.tag.tmw.gun.SPType set value 455
execute if score $rand ui_calc1 matches 15 run data modify storage ui:common input.Item.tag.tmw.gun.SPType set value 456
execute if score $rand ui_calc1 matches 16 run data modify storage ui:common input.Item.tag.tmw.gun.SPType set value 457
execute if score $rand ui_calc1 matches 17 run data modify storage ui:common input.Item.tag.tmw.gun.SPType set value 458
execute if score $rand ui_calc1 matches 18 run data modify storage ui:common input.Item.tag.tmw.gun.SPType set value 459
execute if score $rand ui_calc1 matches 19 run data modify storage ui:common input.Item.tag.tmw.gun.SPType set value 460
execute if score $rand ui_calc1 matches 20 run data modify storage ui:common input.Item.tag.tmw.gun.SPType set value 461
execute if score $rand ui_calc1 matches 21 run data modify storage ui:common input.Item.tag.tmw.gun.SPType set value 154
execute if score $rand ui_calc1 matches 22 run data modify storage ui:common input.Item.tag.tmw.gun.SPType set value 462
execute if score $rand ui_calc1 matches 23 run data modify storage ui:common input.Item.tag.tmw.gun.SPType set value 155
execute if score $rand ui_calc1 matches 24 run data modify storage ui:common input.Item.tag.tmw.gun.SPType set value 352

execute if score $rand ui_calc1 matches 0 run data modify storage ui:common input.Item.tag.tmw.gun.SPName set value "トルネード"
execute if score $rand ui_calc1 matches 1 run data modify storage ui:common input.Item.tag.tmw.gun.SPName set value "アメフラシ"
execute if score $rand ui_calc1 matches 2 run data modify storage ui:common input.Item.tag.tmw.gun.SPName set value "ノヴァ"
execute if score $rand ui_calc1 matches 3 run data modify storage ui:common input.Item.tag.tmw.gun.SPName set value "スーパースター"
execute if score $rand ui_calc1 matches 4 run data modify storage ui:common input.Item.tag.tmw.gun.SPName set value "ボムラッシュ"
execute if score $rand ui_calc1 matches 5 run data modify storage ui:common input.Item.tag.tmw.gun.SPName set value "インクリメント"
execute if score $rand ui_calc1 matches 6 run data modify storage ui:common input.Item.tag.tmw.gun.SPName set value "レーダー"
execute if score $rand ui_calc1 matches 7 run data modify storage ui:common input.Item.tag.tmw.gun.SPName set value "スーパーチャクチ"
execute if score $rand ui_calc1 matches 8 run data modify storage ui:common input.Item.tag.tmw.gun.SPName set value "サヴァイブ"
execute if score $rand ui_calc1 matches 9 run data modify storage ui:common input.Item.tag.tmw.gun.SPName set value "メガホンレーザー"
execute if score $rand ui_calc1 matches 10 run data modify storage ui:common input.Item.tag.tmw.gun.SPName set value "スーパーショット"
execute if score $rand ui_calc1 matches 11 run data modify storage ui:common input.Item.tag.tmw.gun.SPName set value "マルチミサイル"
execute if score $rand ui_calc1 matches 12 run data modify storage ui:common input.Item.tag.tmw.gun.SPName set value "セプタングル"
execute if score $rand ui_calc1 matches 13 run data modify storage ui:common input.Item.tag.tmw.gun.SPName set value "ハイドロポンプ"
execute if score $rand ui_calc1 matches 14 run data modify storage ui:common input.Item.tag.tmw.gun.SPName set value "ジェットパック"
execute if score $rand ui_calc1 matches 15 run data modify storage ui:common input.Item.tag.tmw.gun.SPName set value "バウンシーボム"
execute if score $rand ui_calc1 matches 16 run data modify storage ui:common input.Item.tag.tmw.gun.SPName set value "トリプルトルネード"
execute if score $rand ui_calc1 matches 17 run data modify storage ui:common input.Item.tag.tmw.gun.SPName set value "ウルトラショット"
execute if score $rand ui_calc1 matches 18 run data modify storage ui:common input.Item.tag.tmw.gun.SPName set value "ロケッティア"
execute if score $rand ui_calc1 matches 19 run data modify storage ui:common input.Item.tag.tmw.gun.SPName set value "ナイスダマ"
execute if score $rand ui_calc1 matches 20 run data modify storage ui:common input.Item.tag.tmw.gun.SPName set value "ウルトラハンコ"
execute if score $rand ui_calc1 matches 21 run data modify storage ui:common input.Item.tag.tmw.gun.SPName set value "ガトリングタレット"
execute if score $rand ui_calc1 matches 22 run data modify storage ui:common input.Item.tag.tmw.gun.SPName set value "トライスプレッダー"
execute if score $rand ui_calc1 matches 23 run data modify storage ui:common input.Item.tag.tmw.gun.SPName set value "エナジースタンド"
execute if score $rand ui_calc1 matches 24 run data modify storage ui:common input.Item.tag.tmw.gun.SPName set value "グレートバリア"
