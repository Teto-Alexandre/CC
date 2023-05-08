particle dust 0.5 1 0.5 1.5 ~ ~ ~ 0 0 0 0 1 force

execute if score @s ui_bn matches 1 if predicate ui:percentage/50 store result score $paint ui_temp run fill ~-0.5 ~-2.5 ~-0.5 ~0.5 ~0.5 ~0.5 lime_wool replace #ui:wools
execute unless score @s ui_bn matches 1 if predicate ui:percentage/10 store result score $paint ui_temp run fill ~-0.5 ~-1.5 ~-0.5 ~0.5 ~ ~0.5 lime_wool replace #ui:wools