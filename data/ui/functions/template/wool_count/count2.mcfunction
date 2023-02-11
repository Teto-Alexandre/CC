summon marker ~ ~ ~ {Tags:["ui_temp_obj","count","count3"]}
teleport @s ~ ~1 ~
scoreboard players add @s ui_is 1
execute if score @s ui_is > #count_y wool_count run kill @s