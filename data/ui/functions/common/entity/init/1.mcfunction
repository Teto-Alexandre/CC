summon iron_golem ~ ~ ~ {Silent:1b,PersistenceRequired:1b,Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000}],Tags:["entity","entity.hitbox","entity.unpower"]}
summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"command_block",Count:1b,tag:{CustomModelData:192008}}],Tags:["entity","entity.parts1","entity.unpower"],Invisible:1b,Marker:1b,NoGravity:1b}
summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"command_block",Count:1b,tag:{CustomModelData:192009}}],Tags:["entity","entity.parts2","entity.unpower"],Invisible:1b,Marker:1b,NoGravity:1b}
summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"command_block",Count:1b,tag:{CustomModelData:192010}}],Tags:["entity","entity.parts3","entity.unpower"],Invisible:1b,Marker:1b,NoGravity:1b}

effect give @e[tag=entity.hitbox] invisibility 1000000 127 true

scoreboard players set @s health 50000
bossbar set ui:entity1 max 50000
scoreboard players set @s armor_old 1000
scoreboard players operation @s armor = @s armor_old
scoreboard players set @s charge_acc 4
scoreboard players set @s ui_id -1

execute unless score $difficulty ui_world matches 1.. run scoreboard players set @s health 25000
execute unless score $difficulty ui_world matches 1.. run bossbar set ui:entity1 max 25000
execute unless score $difficulty ui_world matches 1.. run scoreboard players set @s armor_old 500
execute unless score $difficulty ui_world matches 1.. run scoreboard players set @s charge_acc 2

execute if score $difficulty ui_world matches 2 run scoreboard players set @s health 100000
execute if score $difficulty ui_world matches 2 run bossbar set ui:entity1 max 100000
execute if score $difficulty ui_world matches 2 run scoreboard players set @s armor_old 1500
execute if score $difficulty ui_world matches 2 run scoreboard players set @s charge_acc 6

execute if score $difficulty ui_world matches 3 run scoreboard players set @s health 150000
execute if score $difficulty ui_world matches 3 run bossbar set ui:entity1 max 150000
execute if score $difficulty ui_world matches 3 run scoreboard players set @s armor_old 2000
execute if score $difficulty ui_world matches 3 run scoreboard players set @s charge_acc 8

execute store result bossbar ui:entity1 value run bossbar get ui:entity1 max