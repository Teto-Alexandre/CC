scoreboard players operation $template ui_temp = @s armor

attribute @s generic.armor modifier remove 0-0-2-0-8
attribute @s generic.armor modifier remove 0-0-2-0-9
attribute @s generic.armor modifier remove 0-0-2-0-A
attribute @s generic.armor modifier remove 0-0-2-0-B
attribute @s generic.armor modifier remove 0-0-2-0-C

execute if score $template ui_temp matches 16.. run attribute @s generic.armor modifier add 0-0-2-0-8 "ui_curse4" 16 add
execute if score $template ui_temp matches 16.. run scoreboard players remove $template ui_temp 16
execute if score $template ui_temp matches 8.. run attribute @s generic.armor modifier add 0-0-2-0-9 "ui_curse4" 8 add
execute if score $template ui_temp matches 8.. run scoreboard players remove $template ui_temp 8
execute if score $template ui_temp matches 4.. run attribute @s generic.armor modifier add 0-0-2-0-A "ui_curse4" 4 add
execute if score $template ui_temp matches 4.. run scoreboard players remove $template ui_temp 4
execute if score $template ui_temp matches 2.. run attribute @s generic.armor modifier add 0-0-2-0-B "ui_curse4" 2 add
execute if score $template ui_temp matches 2.. run scoreboard players remove $template ui_temp 2
execute if score $template ui_temp matches 1.. run attribute @s generic.armor modifier add 0-0-2-0-C "ui_curse4" 1 add
execute if score $template ui_temp matches 1.. run scoreboard players remove $template ui_temp 1

scoreboard players operation @s armor_old = @s armor
