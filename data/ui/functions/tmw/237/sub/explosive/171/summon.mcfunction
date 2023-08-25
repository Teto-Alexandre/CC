summon item ~ ~ ~ {Tags:["ui_temp_this","tmw_237_sub","tmw_237_sub_summoned_by_171"],Invulnerable:1b,Item:{id:"minecraft:snowball",Count:1b,tag:{tmw:{type:1,color:1},CustomModelData:217111}},PickupDelay:32767s,Age:-32768s}
execute as @e[tag=ui_temp_this,limit=1] run teleport @s ~ ~ ~ ~ ~
execute as @e[tag=ui_temp_this,limit=1] run function ui:template/accelerator/1
data modify entity @e[tag=ui_temp_this,limit=1] Item.tag.tmw.type set value 101
function ui:tmw/237/sub/model/101
execute store result entity @e[tag=ui_temp_this,limit=1] Item.tag.tmw.color int 1 run scoreboard players get $team ui_temp
scoreboard players operation @e[tag=ui_temp_this,limit=1] ui_id = $id ui_temp
scoreboard players operation @e[tag=ui_temp_this,limit=1] ui_team = $team ui_temp
scoreboard players set @e[tag=ui_temp_this,limit=1] ui_uses -1
scoreboard players set @e[tag=ui_temp_this,limit=1] ui_is -1
scoreboard players set @e[tag=ui_temp_this,limit=1] ui_is2 -1
tag @e[tag=ui_temp_this,limit=1] add tmw237_sub_nopoint
playsound entity.snowball.throw player @a ~ ~ ~ 1 0.8 0
#data modify entity @e[tag=ui_temp_this,limit=1] Item.tag.CustomModelData set from entity @e[type=snowball,sort=nearest,limit=1] Item.tag.CustomModelData
tag @e[tag=ui_temp_this] remove ui_temp_this