scoreboard players operation $text.digit10 ui_temp = @s ui_tmw237_drained_damage
scoreboard players operation $text.digit10 ui_temp /= #10 ui_num

execute unless score $jammer ui_temp matches 1.. if score $text.digit10 ui_temp matches ..0 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"000","color":"gray"}'
execute unless score $jammer ui_temp matches 1.. if score $text.digit10 ui_temp matches 1..9 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"00","color":"red"}'
execute unless score $jammer ui_temp matches 1.. if score $text.digit10 ui_temp matches 1..9 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"$text.digit10","objective":"ui_temp"},"color":"red"}'
execute unless score $jammer ui_temp matches 1.. if score $text.digit10 ui_temp matches 10..19 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"0","color":"red"}'
execute unless score $jammer ui_temp matches 1.. if score $text.digit10 ui_temp matches 10..19 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"$text.digit10","objective":"ui_temp"},"color":"red"}'
execute unless score $jammer ui_temp matches 1.. if score $text.digit10 ui_temp matches 20..99 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"0","color":"gold"}'
execute unless score $jammer ui_temp matches 1.. if score $text.digit10 ui_temp matches 20..99 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"$text.digit10","objective":"ui_temp"},"color":"gold"}'
execute unless score $jammer ui_temp matches 1.. if score $text.digit10 ui_temp matches 100..199 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"$text.digit10","objective":"ui_temp"},"color":"yellow"}'
execute unless score $jammer ui_temp matches 1.. if score $text.digit10 ui_temp matches 200..499 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"$text.digit10","objective":"ui_temp"},"color":"green"}'
execute unless score $jammer ui_temp matches 1.. if score $text.digit10 ui_temp matches 500.. run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"$text.digit10","objective":"ui_temp"},"color":"aqua"}'

execute if score $jammer ui_temp matches 1.. run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"000","color":"dark_red","obfuscated":true}'
