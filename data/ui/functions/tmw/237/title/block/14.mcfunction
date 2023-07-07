execute store result score $text.temp ui_temp run data get entity @s Health
execute store result score $text.max ui_temp run attribute @s generic.max_health get 1

scoreboard players operation $text.temp ui_temp *= #100 ui_num
scoreboard players operation $text.temp ui_temp /= $text.max ui_temp
scoreboard players operation $text.temp ui_temp < #100 ui_num
scoreboard players operation $text.temp ui_temp > #0 ui_num

scoreboard players reset $text.max ui_temp

execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 91..100 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"||||||||||","color":"#ffffff"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 81..90 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"|||||||||","color":"#ffeeee"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 71..80 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"||||||||","color":"#ffdddd"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 61..70 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"|||||||","color":"#ffcccc"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 51..60 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"||||||","color":"#ffaaaa"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 41..50 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"|||||","color":"#ff8888"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 31..40 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"||||","color":"#ff6666"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 21..30 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"|||","color":"#ff4444"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 11..20 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"||","color":"#ff2222"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 1..10 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"|","color":"#ff0000"}'

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
