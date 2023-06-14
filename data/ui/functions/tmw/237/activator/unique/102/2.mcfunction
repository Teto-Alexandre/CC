# 速度更新
    execute store result score $speed ui_temp run data get storage ui:gun temp.SPSpeed 100
    execute if score $speed ui_temp matches -100 store result score $speed ui_temp run data get storage ui:gun temp.now.Speed 100
    scoreboard players operation @s wep_speed = $speed ui_temp
    scoreboard players add @s wep_speed 100
    function ui:template/stats/shoot_speed

execute if score @s ui_tmw237_drained_damage matches ..0 run playsound ui.button.click player @s ~ ~ ~ 1 2 0
execute if score @s ui_tmw237_drained_damage matches 1.. run playsound block.piston.contract player @s ~ ~ ~ 1 2 0