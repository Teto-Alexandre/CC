execute if score $text_data ui_temp matches 2 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"SP:"}'
execute if score $text_data ui_temp matches 4 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"SP:"}'

execute unless score $jammer ui_temp matches 1.. if score $sp.temp ui_temp matches 100 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"█","color":"aqua"}'
execute unless score $jammer ui_temp matches 1.. if score $sp.temp ui_temp matches 0..99 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"█","color":"gold"}'

execute unless score $jammer ui_temp matches 1.. if score $text_data ui_temp matches 3..4 if score $sp.temp ui_temp matches 50..100 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"▲","color":"green"}'
execute unless score $jammer ui_temp matches 1.. if score $text_data ui_temp matches 3..4 if score $sp.temp ui_temp matches 0..49 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"▼","color":"red"}'

execute if score $jammer ui_temp matches 1.. run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"█","color":"dark_red"}'
execute if score $jammer ui_temp matches 1.. if score $text_data ui_temp matches 3..4 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"▲","color":"dark_red"}'

scoreboard players reset $sp.use ui_temp