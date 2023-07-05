execute store result score $text.temp ui_temp run data get entity @s SelectedItem.tag.tmw.gun.now.IsHold
execute store result score $text.max ui_temp run data get entity @s SelectedItem.tag.tmw.gun.BurstMax

scoreboard players operation $text.temp ui_temp *= #100 ui_num
scoreboard players operation $text.temp ui_temp /= $text.max ui_temp
scoreboard players operation $text.temp ui_temp < #100 ui_num
scoreboard players operation $text.temp ui_temp > #0 ui_num

scoreboard players reset $text.max ui_temp

execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 91..100 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"||||||||||","color":"#99ffff"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 81..90 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"|||||||||","color":"#88ffff"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 71..80 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"||||||||","color":"#77ffff"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 61..70 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"|||||||","color":"#66ffff"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 51..60 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"||||||","color":"#55ffff"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 41..50 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"|||||","color":"#44ffff"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 31..40 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"||||","color":"#33ffff"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 21..30 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"|||","color":"#22ffff"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 11..20 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"||","color":"#11ffff"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 1..10 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"|","color":"#00ffff"}'

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
