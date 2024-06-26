#
scoreboard players operation $victim_team tds_dmg = @s ui_team

#
execute store result score $Damage tds_dmg run data get storage tds: temp.Damage 100
execute unless data storage tds: temp.DamageType run data modify storage tds: temp.DamageType set value 0
execute store result score $DamageType tds_dmg run data get storage tds: temp.DamageType

execute if entity @s[nbt={active_effects:[{id:"minecraft:fire_resistance"}]}] run function tds:core/attacker/light_up
execute if entity @s[tag=!ui_c_hitbox] as @e[tag=ui_c_hitbox,distance=..7,limit=1] if score @s ui_team = $victim_team tds_dmg run function tds:core/attacker/great_barrier

execute if score $dmg party_mode matches 1.. run function ui:party/dmg
execute if score $def party_mode matches 1.. run function ui:party/def

execute if score $Attacker tds_dmg matches 1..2147483647 run function tds:core/attacker/

execute if score $Damage tds_dmg matches 1.. run function tds:core/calc
#
execute if entity @s[scores={ui_tmw_id=237},tag=drain] if score $Damage tds_dmg matches 1.. at @s run function ui:tmw/237/misc/drain
execute unless entity @s[scores={ui_tmw_id=237},tag=drain] if score $Damage tds_dmg matches 1.. run function tds:core/attack

execute if score $module ui_world matches 1 if score @s module matches 37 run scoreboard players set @s ui_tmw237_heal_cooldown 5
execute if score $module ui_world matches 1 unless score @s module matches 37 run scoreboard players set @s ui_tmw237_heal_cooldown 20
execute unless score $module ui_world matches 1 run scoreboard players set @s ui_tmw237_heal_cooldown 20