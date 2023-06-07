#魔法の弾を削除
execute if entity @s[tag=Pierce] run tag @e[tag=tmw_237_pierce_hit,tag=tmw_237_hit_at_this_move] remove tmw_237_pierce_hit
tag @s add ui_proj_common_nocol
summon marker ~ ~ ~ {Tags:["tmw237_killeffect","ui_temp"]}
teleport @e[tag=ui_temp] ~ ~ ~ ~ ~
scoreboard players operation $hpart ui_temp = @s ui_hpart
execute if score @s ui_hpart matches ..1000 run scoreboard players set $hpart2 ui_temp 0
execute if score @s ui_hpart matches 1001.. run function ui:tmw/237/projectile/kill2
scoreboard players operation @e[tag=ui_temp] ui_hpart = $hpart ui_temp
scoreboard players operation @e[tag=ui_temp] ui_team = @s ui_team
scoreboard players operation @e[tag=ui_temp] ui_id = @s ui_id
scoreboard players operation @e[tag=ui_temp] ui_is = $hpart2 ui_temp
execute if entity @s[tag=subdamage] run tag @e[tag=ui_temp] add subdamage
tag @e[tag=ui_temp] remove ui_temp
scoreboard players set $Cache ui_temp 1
kill @s

#命中・終端時効果を起動する
schedule function ui:tmw/237/projectile/kill.effect 1t append