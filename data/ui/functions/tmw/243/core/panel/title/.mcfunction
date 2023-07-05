execute unless score @s title_whole matches 1.. run function ui:tmw/243/core/panel/title/whole
execute if score @s title_whole matches 1.. unless score @s title_node matches 1.. run function ui:tmw/243/core/panel/title/title
execute if score @s title_whole matches 1.. if score @s title_node matches 1.. unless score @s title_data matches 1.. run function ui:tmw/243/core/panel/title/node
execute if score @s title_whole matches 1.. if score @s title_node matches 1.. if score @s title_data matches 1.. run function ui:tmw/243/core/panel/title/node/