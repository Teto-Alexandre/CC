execute as @e[predicate=ui:load_unhurtable] unless score @s ui_team = $team ui_temp run tag @s add ui_text_target
execute at @s run tag @e[tag=ui_text_target,sort=nearest,limit=1] add ui_text_target2

execute at @s if entity @e[tag=ui_text_target2,distance=20..30] run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"遠距離","color":"green"}'
execute at @s if entity @e[tag=ui_text_target2,distance=10..20] run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"中距離","color":"yellow"}'
execute at @s if entity @e[tag=ui_text_target2,distance=..10] run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"近距離","color":"red"}'
execute at @s unless entity @e[tag=ui_text_target2,distance=..30] run data modify entity @e[tag=ui_template_text_board,limit=1] Item.tag.display.Lore append value '{"text":"探知範囲外","color":"red"}'

tag @e[tag=ui_text_target] remove ui_text_target
tag @e[tag=ui_text_target2] remove ui_text_target2