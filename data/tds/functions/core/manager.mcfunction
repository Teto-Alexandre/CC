#

#
execute store result score $Damage tds_dmg run data get storage tds: temp.Damage 100
execute unless data storage tds: temp.DamageType run data modify storage tds: temp.DamageType set value 0
execute store result score $DamageType tds_dmg run data get storage tds: temp.DamageType

execute if score $Attacker tds_dmg matches -2147483648..2147483647 run function tds:core/attacker/

execute if entity @s[nbt={ActiveEffects:[{Id:12}]}] run function tds:core/attacker/light_up

execute if score $dmg party_mode matches 1.. run function ui:party/dmg
execute if score $def party_mode matches 1.. run function ui:party/def

#
execute if score $Damage tds_dmg matches 1.. run function tds:core/attack