scoreboard players operation $text.temp ui_temp = @s ui_tmw237_speedcover
scoreboard players operation $text.temp ui_temp *= #5 ui_num
scoreboard players operation $text.temp ui_temp /= #8 ui_num
scoreboard players operation $text.temp ui_temp < #100 ui_num
scoreboard players operation $text.temp ui_temp > #0 ui_num

execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 91..100 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"||||||||||","color":"white"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 81..90 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"|||||||||","color":"white"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 71..80 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"||||||||","color":"white"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 61..70 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"|||||||","color":"white"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 51..60 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"||||||","color":"white"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 41..50 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"|||||","color":"white"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 31..40 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"||||","color":"white"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 21..30 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"|||","color":"white"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 11..20 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"||","color":"white"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 1..10 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"|","color":"white"}'

execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 81..90 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"|","color":"gray"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 71..80 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"||","color":"gray"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 61..70 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"|||","color":"gray"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 51..60 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"||||","color":"gray"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 41..50 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"|||||","color":"gray"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 31..40 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"||||||","color":"gray"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 21..30 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"|||||||","color":"gray"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 11..20 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"||||||||","color":"gray"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 1..10 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"|||||||||","color":"gray"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 0 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"||||||||||","color":"gray"}'

execute if score $jammer ui_temp matches 1.. run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"||||||||||","color":"dark_red"}'
