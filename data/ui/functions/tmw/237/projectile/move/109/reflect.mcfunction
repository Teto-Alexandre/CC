scoreboard players add @s ui_br 10
execute if score @s ui_br matches 500.. run scoreboard players set @s ui_br 1000
execute unless score @s ui_br matches 500.. run scoreboard players set @s ui_br_temp 0
scoreboard players add @s ui_bm 4
scoreboard players add @s ui_dmg 40
function ui:tmw/237/projectile/move/109/reflect.2