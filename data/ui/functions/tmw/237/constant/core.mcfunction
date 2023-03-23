# スペ以外の時に実行される常駐効果の管理
    execute if entity @s[tag=floor_proof] at @s run function ui:tmw/237/constant/superstar
    execute if score @s ui_tmw237_survive matches 1.. at @s run function ui:tmw/237/constant/survive
    execute at @s[scores={ui_st=0}] run function ui:tmw/237/constant/shoot
    execute unless score @s ui_team matches 1 at @s if block ~ ~-0.3 ~ light_blue_wool run function ui:tmw/237/constant/floor
    execute unless score @s ui_team matches 2 at @s if block ~ ~-0.3 ~ pink_wool run function ui:tmw/237/constant/floor
    execute unless score @s ui_team matches 3 at @s if block ~ ~-0.3 ~ yellow_wool run function ui:tmw/237/constant/floor
    execute unless score @s ui_team matches 4 at @s if block ~ ~-0.3 ~ lime_wool run function ui:tmw/237/constant/floor
    execute as @s[tag=!cant_hide,scores={ui_st=1..}] at @s run function ui:tmw/237/constant/sneak
    execute as @s[tag=cant_hide,scores={ui_st=1..}] at @s run function ui:tmw/237/constant/sneak_cant

tag @s[tag=cant_hide] remove cant_hide
tag @s[tag=floor_proof] remove floor_proof
execute if score @s ui_tmw237_sprint_particle matches 1.. run scoreboard players remove @s ui_tmw237_sprint_particle 1