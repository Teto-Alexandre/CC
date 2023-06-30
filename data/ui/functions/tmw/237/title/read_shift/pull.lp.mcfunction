execute store result score $text_id ui_temp run data get storage ui:text_board temp.shift[0].ID

execute unless score $text_id ui_temp matches 0 run function ui:tmw/237/title/block/manager

data remove storage ui:text_board temp.shift[0]
scoreboard players remove $text_count ui_temp 1
execute if score $text_count ui_temp matches 1.. run function ui:tmw/237/title/read_shift/pull.lp