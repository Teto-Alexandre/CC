scoreboard players operation $text.temp ui_temp = @s ui_tmw237_ink_regen
scoreboard players operation $text.temp ui_temp /= #10 ui_num
scoreboard players operation $text.temp ui_temp < #100 ui_num
scoreboard players operation $text.temp ui_temp > #0 ui_num

execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 91..100 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"□□□□□□□□□□","color":"white"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 81..90 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"□□□□□□□□□","color":"white"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 71..80 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"□□□□□□□□","color":"white"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 61..70 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"□□□□□□□","color":"white"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 51..60 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"□□□□□□","color":"white"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 41..50 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"□□□□□","color":"white"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 31..40 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"□□□□","color":"white"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 21..30 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"□□□","color":"white"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 11..20 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"□□","color":"white"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 1..10 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"□","color":"white"}'

execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 81..90 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"font":"ui:title","text":"\\u0004\\u0011"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 71..80 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"font":"ui:title","text":"\\u0004\\u0011\\u0004\\u0011"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 61..70 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"font":"ui:title","text":"\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 51..60 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"font":"ui:title","text":"\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 41..50 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"font":"ui:title","text":"\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 31..40 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"font":"ui:title","text":"\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 21..30 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"font":"ui:title","text":"\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 11..20 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"font":"ui:title","text":"\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 1..10 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"font":"ui:title","text":"\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 0 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"font":"ui:title","text":"\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011\\u0004\\u0011"}'

execute if score $jammer ui_temp matches 1.. run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"□□□□□□□□□□","color":"dark_red"}'
