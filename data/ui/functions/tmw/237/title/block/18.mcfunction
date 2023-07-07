execute store result score $ink.cur ui_temp run data get entity @s SelectedItem.tag.tmw.gun.now.Ink
execute store result score $ink.use ui_temp run data get entity @s SelectedItem.tag.tmw.gun.SubInkUse

execute if score $text_data ui_temp matches 2 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"INK:"}'
execute if score $text_data ui_temp matches 4 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"INK:"}'

execute unless score $jammer ui_temp matches 1.. if score $ink.temp ui_temp matches 100 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"█","color":"aqua"}'
execute unless score $jammer ui_temp matches 1.. if score $ink.temp ui_temp matches 0..99 if score $ink.cur ui_temp >= $ink.use ui_temp run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"█","color":"yellow"}'
execute unless score $jammer ui_temp matches 1.. if score $ink.temp ui_temp matches 0..99 if score $ink.cur ui_temp < $ink.use ui_temp run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"█","color":"red"}'

execute unless score $jammer ui_temp matches 1.. if score $text_data ui_temp matches 3..4 if score $ink.temp ui_temp matches 50..100 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"▲","color":"green"}'
execute unless score $jammer ui_temp matches 1.. if score $text_data ui_temp matches 3..4 if score $ink.temp ui_temp matches 0..49 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"▼","color":"red"}'

execute if score $jammer ui_temp matches 1.. run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"█","color":"dark_red"}'
execute if score $jammer ui_temp matches 1.. if score $text_data ui_temp matches 3..4 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"▲","color":"dark_red"}'

scoreboard players reset $ink.use ui_temp