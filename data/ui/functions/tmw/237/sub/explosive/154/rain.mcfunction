# タレット発射
scoreboard players set $particle.fly ui_temp 113
scoreboard players set $particle.end ui_temp -1
scoreboard players set $speed ui_temp 40
scoreboard players set $mod ui_calc1 21
function ui:common/rand
scoreboard players operation $speed.add ui_temp = $rand ui_calc1
scoreboard players set $range ui_temp 70
scoreboard players set $rangetype ui_temp 3
scoreboard players set $damage ui_temp 30
data modify storage ui:gun temp.DisplayName set value '{"text":"ガトリングタレット","color":"gold"}'
function ui:tmw/237/attack/shot/fire_straight
playsound entity.firework_rocket.blast player @a ~ ~ ~ 0.8 1.2 0