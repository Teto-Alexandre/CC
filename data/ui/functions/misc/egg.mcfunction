#=======================================================================================================

# ダメージテスター
execute as @s[tag=ui_12] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Tags:["damage_tester","ui_12_1"]}
execute as @s[tag=ui_12] at @s run playsound entity.painting.place player @a ~ ~ ~
execute as @s[tag=ui_12] at @s run particle large_smoke ~ ~1 ~ 0.3 0.6 0.3 0 15 force
execute as @s[tag=ui_12] at @s run function ui:ui/12/ss

# ヤグラ
execute as @s[tag=ui_17] at @s align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["ui_17_1","ui_17_1_temp"]}
execute at @s[tag=ui_17] as @e[tag=ui_17_1_temp] run function ui:misc/act/make_id
execute as @s[tag=ui_17] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_2","ui_17_2_0","ui_17_2_temp"],Passengers:[{id:"shulker",Color:0b,NoAI:1b,Invulnerable:1b,DeathLootTable:"none",Silent:1b,Health:1000.0f,Attributes:[{Name:"generic.max_health",Base:1000}],Tags:["ui_resistance","ui_unhurtable","ui_17_3","ui_17_2_temp","tds_nolog"]}]}
execute as @s[tag=ui_17] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_2","ui_17_2_1","ui_17_2_temp"],Passengers:[{id:"shulker",Color:0b,NoAI:1b,Invulnerable:1b,DeathLootTable:"none",Silent:1b,Health:1000.0f,Attributes:[{Name:"generic.max_health",Base:1000}],Tags:["ui_resistance","ui_unhurtable","ui_17_3","ui_17_2_temp","tds_nolog"]}]}
execute as @s[tag=ui_17] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_2","ui_17_2_2","ui_17_2_temp"],Passengers:[{id:"shulker",Color:0b,NoAI:1b,Invulnerable:1b,DeathLootTable:"none",Silent:1b,Health:1000.0f,Attributes:[{Name:"generic.max_health",Base:1000}],Tags:["ui_resistance","ui_unhurtable","ui_17_3","ui_17_2_temp","tds_nolog"]}]}
execute as @s[tag=ui_17] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_2","ui_17_2_3","ui_17_2_temp"],Passengers:[{id:"shulker",Color:0b,NoAI:1b,Invulnerable:1b,DeathLootTable:"none",Silent:1b,Health:1000.0f,Attributes:[{Name:"generic.max_health",Base:1000}],Tags:["ui_resistance","ui_unhurtable","ui_17_3","ui_17_2_temp","tds_nolog"]}]}
execute as @s[tag=ui_17] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_2","ui_17_2_4","ui_17_2_temp"],Passengers:[{id:"shulker",Color:0b,NoAI:1b,Invulnerable:1b,DeathLootTable:"none",Silent:1b,Health:1000.0f,Attributes:[{Name:"generic.max_health",Base:1000}],Tags:["ui_resistance","ui_unhurtable","ui_17_3","ui_17_2_temp","tds_nolog"]}]}
execute as @s[tag=ui_17] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_2","ui_17_2_5","ui_17_2_temp"],Passengers:[{id:"shulker",Color:0b,NoAI:1b,Invulnerable:1b,DeathLootTable:"none",Silent:1b,Health:1000.0f,Attributes:[{Name:"generic.max_health",Base:1000}],Tags:["ui_resistance","ui_unhurtable","ui_17_3","ui_17_2_temp","tds_nolog"]}]}
execute as @s[tag=ui_17] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_2","ui_17_2_6","ui_17_2_temp"],Passengers:[{id:"shulker",Color:0b,NoAI:1b,Invulnerable:1b,DeathLootTable:"none",Silent:1b,Health:1000.0f,Attributes:[{Name:"generic.max_health",Base:1000}],Tags:["ui_resistance","ui_unhurtable","ui_17_3","ui_17_2_temp","tds_nolog"]}]}
execute as @s[tag=ui_17] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_2","ui_17_2_7","ui_17_2_temp"],Passengers:[{id:"shulker",Color:0b,NoAI:1b,Invulnerable:1b,DeathLootTable:"none",Silent:1b,Health:1000.0f,Attributes:[{Name:"generic.max_health",Base:1000}],Tags:["ui_resistance","ui_unhurtable","ui_17_3","ui_17_2_temp","tds_nolog"]}]}
execute as @s[tag=ui_17] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_2","ui_17_2_8","ui_17_2_temp"],Passengers:[{id:"shulker",Color:0b,NoAI:1b,Invulnerable:1b,DeathLootTable:"none",Silent:1b,Health:1000.0f,Attributes:[{Name:"generic.max_health",Base:1000}],Tags:["ui_resistance","ui_unhurtable","ui_17_3","ui_17_2_temp","tds_nolog"]}]}
execute as @s[tag=ui_17] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_2","ui_17_2_9","ui_17_2_temp"],Passengers:[{id:"shulker",Color:0b,NoAI:1b,Invulnerable:1b,DeathLootTable:"none",Silent:1b,Health:1000.0f,Attributes:[{Name:"generic.max_health",Base:1000}],Tags:["ui_resistance","ui_unhurtable","ui_17_3","ui_17_2_temp","tds_nolog"]}]}
execute as @s[tag=ui_17] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_2","ui_17_2_10","ui_17_2_temp"],Passengers:[{id:"shulker",Color:0b,NoAI:1b,Invulnerable:1b,DeathLootTable:"none",Silent:1b,Health:1000.0f,Attributes:[{Name:"generic.max_health",Base:1000}],Tags:["ui_resistance","ui_unhurtable","ui_17_3","ui_17_2_temp","tds_nolog"]}]}
execute as @s[tag=ui_17] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_2","ui_17_2_11","ui_17_2_temp"],Passengers:[{id:"shulker",Color:0b,NoAI:1b,Invulnerable:1b,DeathLootTable:"none",Silent:1b,Health:1000.0f,Attributes:[{Name:"generic.max_health",Base:1000}],Tags:["ui_resistance","ui_unhurtable","ui_17_3","ui_17_2_temp","tds_nolog"]}]}
execute as @s[tag=ui_17] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_2","ui_17_2_12","ui_17_2_temp"],Passengers:[{id:"shulker",Color:0b,NoAI:1b,Invulnerable:1b,DeathLootTable:"none",Silent:1b,Health:1000.0f,Attributes:[{Name:"generic.max_health",Base:1000}],Tags:["ui_resistance","ui_unhurtable","ui_17_3","ui_17_2_temp","tds_nolog"]}]}
execute as @s[tag=ui_17] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_2","ui_17_2_13","ui_17_2_temp"],Passengers:[{id:"shulker",Color:0b,NoAI:1b,Invulnerable:1b,DeathLootTable:"none",Silent:1b,Health:1000.0f,Attributes:[{Name:"generic.max_health",Base:1000}],Tags:["ui_resistance","ui_unhurtable","ui_17_3","ui_17_2_temp","tds_nolog"]}]}
execute as @s[tag=ui_17] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_2","ui_17_2_14","ui_17_2_temp"],Passengers:[{id:"shulker",Color:0b,NoAI:1b,Invulnerable:1b,DeathLootTable:"none",Silent:1b,Health:1000.0f,Attributes:[{Name:"generic.max_health",Base:1000}],Tags:["ui_resistance","ui_unhurtable","ui_17_3","ui_17_2_temp","tds_nolog"]}]}
execute as @s[tag=ui_17] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_2","ui_17_2_15","ui_17_2_temp"],Passengers:[{id:"shulker",Color:0b,NoAI:1b,Invulnerable:1b,DeathLootTable:"none",Silent:1b,Health:1000.0f,Attributes:[{Name:"generic.max_health",Base:1000}],Tags:["ui_resistance","ui_unhurtable","ui_17_3","ui_17_2_temp","tds_nolog"]}]}
execute as @s[tag=ui_17] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_2","ui_17_2_16","ui_17_2_temp"],Passengers:[{id:"shulker",Color:0b,NoAI:1b,Invulnerable:1b,DeathLootTable:"none",Silent:1b,Health:1000.0f,Attributes:[{Name:"generic.max_health",Base:1000}],Tags:["ui_resistance","ui_unhurtable","ui_17_3","ui_17_2_temp","tds_nolog"]}]}
execute as @s[tag=ui_17] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_2","ui_17_2_17","ui_17_2_temp"],Passengers:[{id:"shulker",Color:0b,NoAI:1b,Invulnerable:1b,DeathLootTable:"none",Silent:1b,Health:1000.0f,Attributes:[{Name:"generic.max_health",Base:1000}],Tags:["ui_resistance","ui_unhurtable","ui_17_3","ui_17_2_temp","tds_nolog"]}]}
execute as @s[tag=ui_17] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_2","ui_17_2_18","ui_17_2_temp"],Passengers:[{id:"shulker",Color:0b,NoAI:1b,Invulnerable:1b,DeathLootTable:"none",Silent:1b,Health:1000.0f,Attributes:[{Name:"generic.max_health",Base:1000}],Tags:["ui_resistance","ui_unhurtable","ui_17_3","ui_17_2_temp","tds_nolog"]}]}
execute as @s[tag=ui_17] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_2","ui_17_2_19","ui_17_2_temp"],Passengers:[{id:"shulker",Color:0b,NoAI:1b,Invulnerable:1b,DeathLootTable:"none",Silent:1b,Health:1000.0f,Attributes:[{Name:"generic.max_health",Base:1000}],Tags:["ui_resistance","ui_unhurtable","ui_17_3","ui_17_2_temp","tds_nolog"]}]}
execute as @s[tag=ui_17] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_2","ui_17_2_20","ui_17_2_temp"],Passengers:[{id:"shulker",Color:0b,NoAI:1b,Invulnerable:1b,DeathLootTable:"none",Silent:1b,Health:1000.0f,Attributes:[{Name:"generic.max_health",Base:1000}],Tags:["ui_resistance","ui_unhurtable","ui_17_3","ui_17_2_temp","tds_nolog"]}]}
execute as @s[tag=ui_17] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_2","ui_17_2_21","ui_17_2_temp"],Passengers:[{id:"shulker",Color:0b,NoAI:1b,Invulnerable:1b,DeathLootTable:"none",Silent:1b,Health:1000.0f,Attributes:[{Name:"generic.max_health",Base:1000}],Tags:["ui_resistance","ui_unhurtable","ui_17_3","ui_17_2_temp","tds_nolog"]}]}
execute as @s[tag=ui_17] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_2","ui_17_2_22","ui_17_2_temp"],Passengers:[{id:"shulker",Color:0b,NoAI:1b,Invulnerable:1b,DeathLootTable:"none",Silent:1b,Health:1000.0f,Attributes:[{Name:"generic.max_health",Base:1000}],Tags:["ui_resistance","ui_unhurtable","ui_17_3","ui_17_2_temp","tds_nolog"]}]}
execute as @s[tag=ui_17] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_2","ui_17_2_23","ui_17_2_temp"],Passengers:[{id:"shulker",Color:0b,NoAI:1b,Invulnerable:1b,DeathLootTable:"none",Silent:1b,Health:1000.0f,Attributes:[{Name:"generic.max_health",Base:1000}],Tags:["ui_resistance","ui_unhurtable","ui_17_3","ui_17_2_temp","tds_nolog"]}]}
execute as @s[tag=ui_17] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ui_17_2","ui_17_2_24","ui_17_2_temp"],Passengers:[{id:"shulker",Color:0b,NoAI:1b,Invulnerable:1b,DeathLootTable:"none",Silent:1b,Health:1000.0f,Attributes:[{Name:"generic.max_health",Base:1000}],Tags:["ui_resistance","ui_unhurtable","ui_17_3","ui_17_2_temp","tds_nolog"]}]}
execute at @s[tag=ui_17] as @e[tag=ui_17_2_temp] run scoreboard players operation @s ui_id = @e[tag=ui_17_1_temp] ui_id
execute at @s[tag=ui_17] as @e[tag=ui_17_2_temp] run effect give @s glowing 3600 127 true
execute as @s[tag=ui_17] run tag @e[tag=ui_17_1_temp] remove ui_17_1_temp
execute as @s[tag=ui_17] run tag @e[tag=ui_17_2_temp] remove ui_17_2_temp
execute as @s[tag=ui_17] at @s run function ui:ui/17/ss

teleport @s 0 -200 0
kill @s

#=======================================================================================================
