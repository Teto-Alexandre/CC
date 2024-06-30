execute store result score $text.digit22 ui_temp run scoreboard players get @s ui_tmw237_ink_debit
scoreboard players operation $text.digit22 ui_temp *= #-1 ui_num
scoreboard players operation $text.digit22 ui_temp /= #10 ui_num
scoreboard players operation $text.digit22 ui_temp < #99 ui_num
scoreboard players operation $text.digit22 ui_temp > #0 ui_num

scoreboard players reset $text.max ui_temp

execute unless score $jammer ui_temp matches 1.. if score $text.digit22 ui_temp matches 10..99 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"$text.digit22","objective":"ui_temp"},"color":"gold"}'
execute unless score $jammer ui_temp matches 1.. if score $text.digit22 ui_temp matches 1..9 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"0","color":"gold"}'
execute unless score $jammer ui_temp matches 1.. if score $text.digit22 ui_temp matches 1..9 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"$text.digit22","objective":"ui_temp"},"color":"gold"}'
execute unless score $jammer ui_temp matches 1.. if score $text.digit22 ui_temp matches 0 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"00","color":"gray"}'

execute if score $jammer ui_temp matches 1.. run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"00","color":"dark_red","obfuscated":true}'
