execute if score $module ui_world matches 1 if score @s module matches 4 run tag @s add floor_proof2
execute if score $module ui_world matches 1 if score @s module matches 30 run tag @s add cant_hide
execute if score @s ui_tmw237_speedcover matches 1.. run tag @s add floor_proof
execute if score @s ui_tmw237_speedcover matches 1.. run scoreboard players remove @s ui_tmw237_speedcover 1
execute if entity @s[tag=speedtype_weapon] unless score $subtime ui_temp matches 1.. unless score $sptime ui_temp matches 1.. run function ui:template/stats/shoot_speed

# スペ以外の時に実行される常駐効果の管理
    execute if entity @s[tag=floor_proof] at @s run function ui:tmw/237/constant/superstar
    execute if score @s ui_tmw237_survive matches 1.. at @s run function ui:tmw/237/constant/survive
    execute at @s[scores={ui_st=0}] run function ui:tmw/237/constant/shoot
    execute unless score @s ui_team matches 1 at @s[tag=!floor_proof2] if block ~ ~-0.3 ~ light_blue_wool run function ui:tmw/237/constant/floor
    execute unless score @s ui_team matches 2 at @s[tag=!floor_proof2] if block ~ ~-0.3 ~ pink_wool run function ui:tmw/237/constant/floor
    execute unless score @s ui_team matches 3 at @s[tag=!floor_proof2] if block ~ ~-0.3 ~ yellow_wool run function ui:tmw/237/constant/floor
    execute unless score @s ui_team matches 4 at @s[tag=!floor_proof2] if block ~ ~-0.3 ~ lime_wool run function ui:tmw/237/constant/floor
    execute as @s[tag=!cant_hide,scores={ui_st=1..}] at @s run function ui:tmw/237/constant/sneak
    execute as @s[tag=cant_hide,scores={ui_st=1..}] at @s run function ui:tmw/237/constant/sneak_cant

tag @s[tag=cant_hide] remove cant_hide
tag @s[tag=floor_proof] remove floor_proof
tag @s[tag=floor_proof2] remove floor_proof2
execute if score @s ui_tmw237_sprint_particle matches 1.. run scoreboard players remove @s ui_tmw237_sprint_particle 1