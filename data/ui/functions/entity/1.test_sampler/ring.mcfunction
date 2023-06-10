# スプリンクラー発射
scoreboard players set $particle.fly ui_temp 6
scoreboard players set $particle.end ui_temp 121
scoreboard players set $speed ui_temp 10
scoreboard players set $mod ui_calc1 15
function ui:common/rand
execute if score $difficulty ui_world matches 1.. run scoreboard players operation $speed.add ui_temp = $rand ui_calc1
scoreboard players set $range ui_temp 40
scoreboard players set $rangetype ui_temp 1
scoreboard players set $damage ui_temp 70
execute unless score $difficulty ui_world matches 1.. run scoreboard players set $damage ui_temp 60
execute if score $difficulty ui_world matches 3.. run scoreboard players set $damage ui_temp 100
data modify storage ui:gun temp.DisplayName set value '{"text":"リングパルサー","color":"gold"}'
function ui:tmw/237/attack/shot/fire_straight
playsound entity.firework_rocket.blast player @a ~ ~ ~ 0.8 2 0