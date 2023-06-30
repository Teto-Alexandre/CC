scoreboard players operation $ink.temp ui_temp = $ink ui_temp
scoreboard players operation $ink.temp ui_temp *= #100 ui_num
scoreboard players operation $ink.temp ui_temp /= $ink.max ui_temp
scoreboard players operation $ink.temp ui_temp < #100 ui_num
scoreboard players operation $ink.temp ui_temp > #0 ui_num

execute if score $ink.temp ui_temp matches 100 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"$ink.temp","objective":"ui_temp"},"color":"aqua"}'
execute if score $ink.temp ui_temp matches 60..99 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"0","color":"green"}'
execute if score $ink.temp ui_temp matches 60..99 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"$ink.temp","objective":"ui_temp"},"color":"green"}'
execute if score $ink.temp ui_temp matches 30..59 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"0","color":"yellow"}'
execute if score $ink.temp ui_temp matches 30..59 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"$ink.temp","objective":"ui_temp"},"color":"yellow"}'
execute if score $ink.temp ui_temp matches 10..29 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"0","color":"red"}'
execute if score $ink.temp ui_temp matches 10..29 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"$ink.temp","objective":"ui_temp"},"color":"red"}'
execute if score $ink.temp ui_temp matches 0..9 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"00","color":"red"}'
execute if score $ink.temp ui_temp matches 0..9 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"$ink.temp","objective":"ui_temp"},"color":"red"}'
