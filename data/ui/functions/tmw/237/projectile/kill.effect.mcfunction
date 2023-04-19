# 個別に実行する
execute as @e[tag=tmw237_killeffect] if score @s ui_is matches 1.. at @s run function ui:tmw/237/projectile/kill.effect_delay
execute as @e[tag=tmw237_killeffect] unless score @s ui_is matches 1.. at @s run function ui:tmw/237/projectile/kill.effect2


execute if entity @e[tag=tmw237_killeffect] run schedule function ui:tmw/237/projectile/kill.effect 1t append