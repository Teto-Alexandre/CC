#
scoreboard players operation $victim_team tds_dmg = @s ui_team

#
execute store result score $Damage tds_dmg run data get storage tds: temp.Damage 100
execute unless data storage tds: temp.DamageType run data modify storage tds: temp.DamageType set value 0
execute store result score $DamageType tds_dmg run data get storage tds: temp.DamageType

execute if score $Attacker tds_dmg matches 1..2147483647 run function tds:core/attacker/

execute if entity @s[nbt={ActiveEffects:[{Id:12}]}] run function tds:core/attacker/light_up
execute if entity @s[tag=!ui_c_hitbox] as @e[tag=ui_c_hitbox,distance=..7,limit=1] if score @s ui_team = $victim_team tds_dmg run function tds:core/attacker/great_barrier

execute if score $dmg party_mode matches 1.. run function ui:party/dmg
execute if score $def party_mode matches 1.. run function ui:party/def

#
execute if score $Damage tds_dmg matches 1.. run function tds:core/attack
