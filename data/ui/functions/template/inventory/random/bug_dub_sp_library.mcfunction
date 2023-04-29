scoreboard players set $mod ui_calc1 3
function ui:common/rand

execute if score $rand ui_calc1 matches 0 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 452
execute if score $rand ui_calc1 matches 1 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 455
execute if score $rand ui_calc1 matches 2 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 459
execute if score $rand ui_calc1 matches 3 run data modify storage ui:common input.Item.tag.tmw.gun.SubType set value 460

execute if score $rand ui_calc1 matches 0 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "マルチミサイル"
execute if score $rand ui_calc1 matches 1 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "ジェットパック"
execute if score $rand ui_calc1 matches 2 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "ロケッティア"
execute if score $rand ui_calc1 matches 3 run data modify storage ui:common input.Item.tag.tmw.gun.SubName set value "ナイスダマ"
