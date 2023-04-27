particle dust 1 0.5 1 1.5 ~ ~ ~ 0 0 0 0 1 force

execute if score @s ui_is matches 0..100 if predicate ui:percentage/30 store result score $paint ui_temp run fill ~-0.5 ~-2 ~-0.5 ~0.5 ~1 ~0.5 pink_wool replace #ui:wools
execute if score @s ui_is matches 101..150 if predicate ui:percentage/25 store result score $paint ui_temp run fill ~-0.5 ~-2 ~-0.5 ~0.5 ~1 ~0.5 pink_wool replace #ui:wools
execute if score @s ui_is matches 151..250 if predicate ui:percentage/15 store result score $paint ui_temp run fill ~-0.4 ~-2 ~-0.4 ~0.4 ~1 ~0.4 pink_wool replace #ui:wools
execute if score @s ui_is matches 251..300 if predicate ui:percentage/10 store result score $paint ui_temp run fill ~-0.3 ~-2 ~-0.3 ~0.3 ~1 ~0.3 pink_wool replace #ui:wools
