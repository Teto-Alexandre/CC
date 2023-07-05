execute store result score $text.digit13 ui_temp run data get entity @s SelectedItem.tag.tmw.gun.now.CT
#tellraw @a {"score":{"name": "$text.digit13","objective": "ui_temp"}}
execute unless score $text.digit13 ui_temp matches 0 store result score $text.max ui_temp run time query gametime
execute unless score $text.digit13 ui_temp matches 0 run scoreboard players operation $text.digit13 ui_temp -= $text.max ui_temp
#scoreboard players operation $text.digit13 ui_temp /= #2 ui_num
scoreboard players operation $text.digit13 ui_temp < #99 ui_num
scoreboard players operation $text.digit13 ui_temp > #0 ui_num

scoreboard players reset $text.max ui_temp

execute unless score $jammer ui_temp matches 1.. if score $text.digit13 ui_temp matches 10..99 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"$text.digit13","objective":"ui_temp"},"color":"white"}'
execute unless score $jammer ui_temp matches 1.. if score $text.digit13 ui_temp matches 1..9 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"0","color":"white"}'
execute unless score $jammer ui_temp matches 1.. if score $text.digit13 ui_temp matches 1..9 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"score":{"name":"$text.digit13","objective":"ui_temp"},"color":"white"}'
execute unless score $jammer ui_temp matches 1.. if score $text.digit13 ui_temp matches 0 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"00","color":"gray"}'

execute if score $jammer ui_temp matches 1.. run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"00","color":"dark_red","obfuscated":true}'
