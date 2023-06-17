# ボスバー
execute if score @s ui_gpc matches 1 run bossbar set ui:entity1 players @a
execute store result score $damage_calc ui_temp run bossbar get ui:entity1 value
execute store result bossbar ui:entity1 value store result score $damage ui_temp run scoreboard players get @s health
scoreboard players operation $damage_calc ui_temp -= $damage ui_temp
scoreboard players operation $damage_calc ui_temp /= #10 ui_num
execute if score $damage_calc ui_temp matches 1.. run bossbar set ui:entity1 name [{"text":"TF-Vanguard ","color":"yellow","italic":false,"bold":true},{"text":"-","color":"red","italic":false,"bold":true},{"score": {"name": "$damage_calc","objective": "ui_temp"},"color": "red"}]
execute if score $damage_calc ui_temp matches 0 run bossbar set ui:entity1 name [{"text":"TF-Vanguard","color":"yellow","italic":false,"bold":true}]

execute unless score $difficulty ui_world matches 1.. if score $damage_calc ui_temp matches 150.. if entity @s[tag=!entity.modifier.12] run function ui:entity/1.test_sampler/armor_broken
execute if score $difficulty ui_world matches 1 if score $damage_calc ui_temp matches 200.. if entity @s[tag=!entity.modifier.12] run function ui:entity/1.test_sampler/armor_broken
execute if score $difficulty ui_world matches 2 if score $damage_calc ui_temp matches 250.. if entity @s[tag=!entity.modifier.12] run function ui:entity/1.test_sampler/armor_broken
execute if score $difficulty ui_world matches 3 if score $damage_calc ui_temp matches 300.. if entity @s[tag=!entity.modifier.12] run function ui:entity/1.test_sampler/armor_broken

scoreboard players operation $entity.time_temp ui_temp = @s ui_is
scoreboard players operation $entity.time_temp ui_temp %= #500 ui_num
scoreboard players remove $entity.time_temp ui_temp 139

execute if score $difficulty ui_world matches 2.. if score $damage_calc ui_temp matches 250.. if score $entity.time_temp ui_temp matches 103.. run scoreboard players operation @s ui_is -= $entity.time_temp ui_temp