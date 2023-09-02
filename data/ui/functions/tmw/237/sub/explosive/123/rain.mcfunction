# タレット発射
scoreboard players set $particle.fly ui_temp 6
scoreboard players set $particle.end ui_temp 2
scoreboard players set $speed ui_temp 80
scoreboard players set $speed.add ui_temp 0
scoreboard players set $range ui_temp 80
scoreboard players set $rangetype ui_temp 4
scoreboard players set $damage ui_temp 10
execute if score $team ui_temp matches 1 run data modify storage ui:gun temp.DisplayName set value '{"text":"フライングタレット","color":"aqua"}'
execute if score $team ui_temp matches 2 run data modify storage ui:gun temp.DisplayName set value '{"text":"フライングタレット","color":"light_purple"}'
execute if score $team ui_temp matches 3 run data modify storage ui:gun temp.DisplayName set value '{"text":"フライングタレット","color":"yellow"}'
execute if score $team ui_temp matches 4 run data modify storage ui:gun temp.DisplayName set value '{"text":"フライングタレット","color":"green"}'
scoreboard players set $mod ui_calc1 4
function ui:common/rand
execute if score $rand ui_calc1 matches 0 positioned ^ ^ ^0.000 run function ui:tmw/237/attack/shot/fire_straight
execute if score $rand ui_calc1 matches 1 positioned ^ ^ ^0.125 run function ui:tmw/237/attack/shot/fire_straight
execute if score $rand ui_calc1 matches 2 positioned ^ ^ ^0.250 run function ui:tmw/237/attack/shot/fire_straight
execute if score $rand ui_calc1 matches 3 positioned ^ ^ ^0.375 run function ui:tmw/237/attack/shot/fire_straight
playsound entity.firework_rocket.blast player @a ~ ~ ~ 0.8 2 0