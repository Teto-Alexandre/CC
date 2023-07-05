# 状態をタイトルに表示

# インク残量
execute store result score $jammer ui_temp run scoreboard players get @s ui_tmw237_title_jammer
execute if score @s ui_tmw237_title_jammer matches 1.. run scoreboard players remove @s ui_tmw237_title_jammer 1

# 時間設定
title @s times 0 5 0

function ui:template/text_board/open
function oh_my_dat:please
data modify storage ui:text_board temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].text_board

execute store result score $text_count ui_temp run data get storage ui:text_board temp.actionbar
execute if score $text_count ui_temp matches 1.. run function ui:tmw/237/title/temp_shift/actionbar
execute if score $text_count ui_temp matches 1.. run function ui:tmw/237/title/read_shift/pull.lp

function ui:template/text_board/bro_actionbar

function ui:template/text_board/clear

execute store result score $text_count ui_temp run data get storage ui:text_board temp.subtitle
execute if score $text_count ui_temp matches 1.. run function ui:tmw/237/title/temp_shift/subtitle
execute if score $text_count ui_temp matches 1.. run function ui:tmw/237/title/read_shift/pull.lp

function ui:template/text_board/bro_subtitle

function ui:template/text_board/clear

execute store result score $text_count ui_temp run data get storage ui:text_board temp.title
execute if score $text_count ui_temp matches 1.. run function ui:tmw/237/title/temp_shift/title
execute if score $text_count ui_temp matches 1.. run function ui:tmw/237/title/read_shift/pull.lp

function ui:template/text_board/bro_title

scoreboard players reset $text_count ui_temp
scoreboard players reset $text_id ui_temp
data remove storage ui:text_board temp
function ui:template/text_board/close
