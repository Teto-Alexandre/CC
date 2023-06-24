execute unless score @s ui_tmw237_drained_damage matches 1.. run playsound ui.button.click player @s ~ ~ ~ 1 2 0
execute if score @s ui_tmw237_drained_damage matches 1.. positioned ~ ~1.65 ~ run function ui:tmw/237/activator/unique/102/2.2
execute if score @s ui_tmw237_drained_damage matches 1.. run scoreboard players reset @s ui_tmw237_drained_damage