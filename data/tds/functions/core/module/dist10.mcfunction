#
data merge storage ui:common {input:{Mode:"dist"}}
execute at @e[tag=tds_victim_temp] as @e[tag=tds_attacker_temp] run function ui:common/distance
scoreboard players operation $temp ui_temp > $Return ui_temp

#tellraw @a {"score":{"name": "$temp","objective": "ui_temp"}}

execute if score $temp ui_temp matches ..8 run scoreboard players operation $Damage tds_dmg *= #7 ui_num
execute if score $temp ui_temp matches ..8 run scoreboard players operation $Damage tds_dmg /= #10 ui_num
execute if score $temp ui_temp matches 9..11 unless score $temp ui_temp matches 10 run scoreboard players operation $Damage tds_dmg *= #12 ui_num
execute if score $temp ui_temp matches 9..11 unless score $temp ui_temp matches 10 run scoreboard players operation $Damage tds_dmg /= #10 ui_num
execute if score $temp ui_temp matches 9..11 unless score $temp ui_temp matches 10 at @s run playsound block.bell.use player @s ~ ~ ~ 1 2 0
execute if score $temp ui_temp matches 9..11 unless score $temp ui_temp matches 10 at @e[tag=tds_victim_temp] run particle dust 0.5 1 0.5 1 ~ ~0.9 ~ 0.5 0.5 0.5 0 15 force
execute if score $temp ui_temp matches 9..11 unless score $temp ui_temp matches 10 at @e[tag=tds_victim_temp] run particle block emerald_block ~ ~0.9 ~ 0.5 0.5 0.5 0 15 force
execute if score $temp ui_temp matches 10 run scoreboard players operation $Damage tds_dmg *= #2 ui_num
execute if score $temp ui_temp matches 10 at @s run playsound entity.zombie.attack_iron_door player @s ~ ~ ~ 1 2 0
execute if score $temp ui_temp matches 10 at @e[tag=tds_victim_temp] run particle dust 0.5 1 1 1 ~ ~0.9 ~ 0.5 0.5 0.5 0 15 force
execute if score $temp ui_temp matches 10 at @e[tag=tds_victim_temp] run particle block diamond_block ~ ~0.9 ~ 0.5 0.5 0.5 0 15 force
execute if score $temp ui_temp matches 12.. run scoreboard players operation $Damage tds_dmg *= #7 ui_num
execute if score $temp ui_temp matches 12.. run scoreboard players operation $Damage tds_dmg /= #10 ui_num