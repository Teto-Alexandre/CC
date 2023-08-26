# スペシャルゲージが減らない、隠れられない
tag @s add cant_hide
execute if score $activator_type ui_temp matches 1 run scoreboard players add $subtime ui_temp 1
execute if score $activator_type ui_temp matches 2 run scoreboard players add $sptime ui_temp 1