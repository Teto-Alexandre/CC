#

#
execute store result score $Damage tds_dmg run data get storage tds: temp.Damage 100

execute if score $dmg party_mode matches 1.. run function ui:party/dmg
execute if score $def party_mode matches 1.. run function ui:party/def

#
execute if score $Damage tds_dmg matches 1.. run function tds:core/attack