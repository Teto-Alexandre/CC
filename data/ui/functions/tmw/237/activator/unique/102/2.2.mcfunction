summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tds.attack","ui","ui_proj","tmw_237","ui_temp_unpower"],ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"null"}'}}},{},{},{}]}
execute as @e[tag=ui_temp_unpower] at @s run tp @s ^ ^ ^1.0 ~ ~ 
scoreboard players set @e[tag=ui_temp_unpower] ui_bpart 3
scoreboard players set @e[tag=ui_temp_unpower] ui_hpart 2
scoreboard players set @e[tag=ui_temp_unpower] ui_bm 10
scoreboard players set @e[tag=ui_temp_unpower] ui_br 10
scoreboard players set @e[tag=ui_temp_unpower] ui_gpc 1
scoreboard players set @e[tag=ui_temp_unpower] ui_bdt 1
scoreboard players operation @e[tag=ui_temp_unpower] ui_dmg = @s ui_tmw237_drained_damage
execute as @e[tag=ui_temp_unpower] run data modify entity @s ArmorItems.[0].tag.display.Name set value '{"text":"カウンター","color":"gray"}'