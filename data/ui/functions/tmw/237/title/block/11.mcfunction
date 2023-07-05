execute if score @s ui_tmw237_boost matches -2147483648..2147483647 run scoreboard players operation $text.temp ui_temp = @s ui_tmw237_boost
execute unless score @s ui_tmw237_boost matches -2147483648..2147483647 run scoreboard players set $text.temp ui_temp 0
scoreboard players operation $text.temp ui_temp *= #100 ui_num
execute if score $module ui_world matches 1 if score @s module matches 31 run scoreboard players operation $text.temp ui_temp /= #280 ui_num
execute if score $module ui_world matches 1 if score @s module matches 31 run scoreboard players operation $text.temp ui_temp /= #180 ui_num
scoreboard players operation $text.temp ui_temp < #100 ui_num
scoreboard players operation $text.temp ui_temp > #0 ui_num

execute if score $module ui_world matches 1 if score @s module matches 31 run scoreboard players set $mod ui_calc1 101
execute if score $module ui_world matches 1 if score @s module matches 31 run function ui:common/rand
execute if score $module ui_world matches 1 if score @s module matches 31 run scoreboard players operation $text.temp ui_temp = $rand ui_calc1

execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 91..100 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"||||||||||","color":"gold"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 81..90 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"|||||||||","color":"gold"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 71..80 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"||||||||","color":"gold"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 61..70 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"|||||||","color":"gold"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 51..60 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"||||||","color":"gold"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 41..50 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"|||||","color":"gold"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 31..40 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"||||","color":"gold"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 21..30 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"|||","color":"gold"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 11..20 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"||","color":"gold"}'
execute unless score $jammer ui_temp matches 1.. if score $text.temp ui_temp matches 1..10 run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"|","color":"gold"}'

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
