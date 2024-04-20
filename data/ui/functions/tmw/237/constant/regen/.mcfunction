# 回復を行う

#
#effect give @s minecraft:regeneration 3 3 true

#
#scoreboard players operation @s health_regen_temp += @s health_regen
#execute if score @s health_regen_temp matches 1000.. run function ui:tmw/237/constant/regen/plus

scoreboard players set #temp.amount ui_temp 150

scoreboard players operation #temp.regen_plus ui_temp = @s health_regen
scoreboard players operation #temp.regen_plus ui_temp += #100 ui_num

scoreboard players operation #temp.amount ui_temp *= #temp.regen_plus ui_temp
scoreboard players operation #temp.amount ui_temp /= #100 ui_num

data modify storage tds: temp set value {Amount:0.0f,DisableParticle:1b}
execute store result storage tds: temp.Amount float 0.01 run scoreboard players get #temp.amount ui_temp
function tds:heal
data remove storage tds: temp
scoreboard players set @s ui_tmw237_heal_cooldown 2
scoreboard players reset #temp.amount ui_temp
scoreboard players reset #temp.regen_plus ui_temp