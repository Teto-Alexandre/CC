execute unless score $jammer ui_temp matches 1.. if score $sp.temp ui_temp matches 100 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"CHARGED","color":"yellow"}'

execute if score $jammer ui_temp matches 1.. run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"HACKING","color":"dark_red"}'

