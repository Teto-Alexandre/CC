scoreboard players operation $sp.temp ui_temp = @s ui_paint
scoreboard players operation $sp.temp ui_temp *= #100 ui_num
scoreboard players operation $sp.temp ui_temp /= $spneed ui_temp

execute if score $sp.temp ui_temp matches 100 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"■■■■■■■■■■","color":"aqua"}'
execute if score $sp.temp ui_temp matches 90..99 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"■■■■■■■■■□","color":"green"}'
execute if score $sp.temp ui_temp matches 80..89 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"■■■■■■■■□□","color":"green"}'
execute if score $sp.temp ui_temp matches 70..79 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"■■■■■■■□□□","color":"green"}'
execute if score $sp.temp ui_temp matches 60..69 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"■■■■■■□□□□","color":"green"}'
execute if score $sp.temp ui_temp matches 50..59 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"■■■■■□□□□□","color":"yellow"}'
execute if score $sp.temp ui_temp matches 40..49 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"■■■■□□□□□□","color":"yellow"}'
execute if score $sp.temp ui_temp matches 30..39 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"■■■□□□□□□□","color":"yellow"}'
execute if score $sp.temp ui_temp matches 20..29 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"■■□□□□□□□□","color":"red"}'
execute if score $sp.temp ui_temp matches 10..19 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"■□□□□□□□□□","color":"red"}'
execute if score $sp.temp ui_temp matches 0..9 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"□□□□□□□□□□","color":"red"}'
