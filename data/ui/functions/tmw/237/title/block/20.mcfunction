execute store result score $text.temp ui_temp run data get entity @s Health
execute store result score $text.max ui_temp run attribute @s generic.max_health get 1

scoreboard players operation $text.temp ui_temp *= #100 ui_num
scoreboard players operation $text.temp ui_temp /= $text.max ui_temp
scoreboard players operation $text.temp ui_temp < #100 ui_num
scoreboard players operation $text.temp ui_temp > #0 ui_num

scoreboard players reset $text.max ui_temp

execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 100 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"♥","color":"white"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 80..99 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"♥","color":"aqua"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 60..79 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"♥","color":"green"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 40..59 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"♥","color":"yellow"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 20..39 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"♥","color":"gold"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 0..19 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"♥","color":"red"}'

execute if score $jammer ui_temp matches 1.. run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"♥","color":"dark_red"}'

scoreboard players reset $sp.use ui_temp