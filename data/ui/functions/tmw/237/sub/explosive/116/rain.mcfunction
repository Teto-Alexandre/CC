# タレット発射
scoreboard players set $particle.fly ui_temp 6
scoreboard players set $particle.end ui_temp 2
scoreboard players set $speed ui_temp 40
scoreboard players set $mod ui_calc1 11
function ui:common/rand
scoreboard players operation $speed.add ui_temp = $rand ui_calc1
scoreboard players set $range ui_temp 70
scoreboard players set $rangetype ui_temp 3
scoreboard players set $damage ui_temp 40
execute if score $team ui_temp matches 1 run data modify storage ui:gun temp.DisplayName set value '{"text":"インクタレット","color":"aqua"}'
execute if score $team ui_temp matches 2 run data modify storage ui:gun temp.DisplayName set value '{"text":"インクタレット","color":"light_purple"}'
execute if score $team ui_temp matches 3 run data modify storage ui:gun temp.DisplayName set value '{"text":"インクタレット","color":"yellow"}'
execute if score $team ui_temp matches 4 run data modify storage ui:gun temp.DisplayName set value '{"text":"インクタレット","color":"green"}'

# 他の設定 通常死亡メッセージ、サブウェポン、サブウェポン
scoreboard players set $deathmessage ui_temp 0
scoreboard players set $basetype ui_temp -2
scoreboard players set $subtype ui_temp 401

function ui:tmw/237/attack/shot/fire_straight
playsound entity.firework_rocket.blast player @a ~ ~ ~ 0.8 1.2 0