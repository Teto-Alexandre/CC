summon item ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub"],Invulnerable:1b,Item:{id:"minecraft:snowball",Count:1b,tag:{tmw:{type:1,color:1},CustomModelData:217111}},PickupDelay:32767s,Age:-32768s}
execute as @e[tag=ui_temp_this,limit=1] rotated as @p run teleport @s ~ ~ ~ ~ ~
execute as @e[tag=ui_temp_this,limit=1] run function ui:template/accelerator/1
execute store result entity @e[tag=ui_temp_this,limit=1] Item.tag.tmw.type int 1 run scoreboard players get $activator ui_temp
execute if score $activator ui_temp matches 101 run function ui:tmw/237/sub/model/101
execute if score $activator ui_temp matches 103 run function ui:tmw/237/sub/model/103
execute if score $activator ui_temp matches 108 run data modify entity @e[tag=ui_temp_this,limit=1] Item.tag.CustomModelData set value 217121
execute if score $activator ui_temp matches 116 run data merge entity @e[tag=ui_temp_this,limit=1] {Item:{id:"minecraft:gray_stained_glass_pane",tag:{CustomModelData:120001}}}
execute if score $activator ui_temp matches 117..118 run data modify entity @e[tag=ui_temp_this,limit=1] Item.tag.CustomModelData set value 217141
execute if score $activator ui_temp matches 123 run data merge entity @e[tag=ui_temp_this,limit=1] {Item:{id:"minecraft:gray_stained_glass_pane",tag:{CustomModelData:120001}}}
execute if score $activator ui_temp matches 154 run data merge entity @e[tag=ui_temp_this,limit=1] {Item:{id:"minecraft:gray_stained_glass_pane",tag:{CustomModelData:120001}}}
execute if score $activator ui_temp matches 155 run data merge entity @e[tag=ui_temp_this,limit=1] {Item:{id:"minecraft:gray_stained_glass_pane",tag:{CustomModelData:120001}}}
execute if score $activator ui_temp matches 156 run data merge entity @e[tag=ui_temp_this,limit=1] {Item:{id:"minecraft:gray_stained_glass_pane",tag:{CustomModelData:120001}}}
execute store result entity @e[tag=ui_temp_this,limit=1] Item.tag.tmw.color int 1 run scoreboard players get $team ui_temp
scoreboard players operation @e[tag=ui_temp_this,limit=1] ui_id = @s ui_id
scoreboard players operation @e[tag=ui_temp_this,limit=1] ui_team = $team ui_temp
scoreboard players set @e[tag=ui_temp_this,limit=1] ui_uses -1
scoreboard players set @e[tag=ui_temp_this,limit=1] ui_is -1
scoreboard players set @e[tag=ui_temp_this,limit=1] ui_is2 -1
execute if score $sptype ui_temp matches 253 if score $sptime ui_temp matches 1.. run tag @e[tag=ui_temp_this,limit=1] add tmw237_sub_nopoint
playsound entity.snowball.throw player @a ~ ~ ~ 1 0.8 0
#data modify entity @e[tag=ui_temp_this,limit=1] Item.tag.CustomModelData set from entity @e[type=snowball,sort=nearest,limit=1] Item.tag.CustomModelData
execute if entity @s[scores={module=41}] run tag @e[tag=ui_temp_this,limit=1] add ui_237_thrown_by_module41
tag @e[tag=ui_temp_this] remove ui_temp_this