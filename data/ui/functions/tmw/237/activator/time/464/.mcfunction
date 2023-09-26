# キューインキ
tag @s add ui_temp_this
execute if entity @s[tag=speedtype_shoot] run function ui:tmw/237/activator/time/464/vacuum

execute if score $subtype ui_temp matches 464 if score $subtime ui_temp matches 1 run function ui:tmw/237/attack/master
execute if score $sptype ui_temp matches 464 if score $sptime ui_temp matches 1 run function ui:tmw/237/attack/master