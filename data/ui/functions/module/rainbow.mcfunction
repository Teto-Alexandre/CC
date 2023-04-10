scoreboard players add $rainbow_wait ui_temp 1
execute if score $rainbow_wait ui_temp matches 3.. run scoreboard players set $rainbow_wait ui_temp 1
execute if score $rainbow_wait ui_temp matches 1 run scoreboard players add $rainbow ui_temp 1
execute if score $rainbow ui_temp matches 10.. run scoreboard players set $rainbow ui_temp 1

execute if score $rainbow_wait ui_temp matches 1 if score $rainbow ui_temp matches 1 run team modify rainbow color light_purple
execute if score $rainbow_wait ui_temp matches 1 if score $rainbow ui_temp matches 2 run team modify rainbow color red
execute if score $rainbow_wait ui_temp matches 1 if score $rainbow ui_temp matches 3 run team modify rainbow color gold
execute if score $rainbow_wait ui_temp matches 1 if score $rainbow ui_temp matches 4 run team modify rainbow color yellow
execute if score $rainbow_wait ui_temp matches 1 if score $rainbow ui_temp matches 5 run team modify rainbow color green
execute if score $rainbow_wait ui_temp matches 1 if score $rainbow ui_temp matches 6 run team modify rainbow color aqua
execute if score $rainbow_wait ui_temp matches 1 if score $rainbow ui_temp matches 7 run team modify rainbow color dark_aqua
execute if score $rainbow_wait ui_temp matches 1 if score $rainbow ui_temp matches 8 run team modify rainbow color blue
execute if score $rainbow_wait ui_temp matches 1 if score $rainbow ui_temp matches 9 run team modify rainbow color dark_purple