execute unless data storage ui:gun temp3.BulletData.hitbox_x run scoreboard players set #hitbox_x ui_temp 50
execute unless data storage ui:gun temp3.BulletData.hitbox_y run scoreboard players set #hitbox_y ui_temp 30

execute if data storage ui:gun temp3.BulletData.hitbox_x store result score #hitbox_x ui_temp run data get storage ui:gun temp3.BulletData.hitbox_x 100
execute if data storage ui:gun temp3.BulletData.hitbox_x store result score #hitbox_y ui_temp run data get storage ui:gun temp3.BulletData.hitbox_y 100

scoreboard players operation #hitbox_x ui_temp /= #2 ui_num
scoreboard players operation #hitbox_y ui_temp /= #2 ui_num

execute store result storage ui:gun temp3.BulletData.hitbox.posx float 0.01 run scoreboard players get #hitbox_x ui_temp
execute store result storage ui:gun temp3.BulletData.hitbox.posy float 0.01 run scoreboard players get #hitbox_y ui_temp
execute store result storage ui:gun temp3.BulletData.hitbox.negx float -0.01 run scoreboard players get #hitbox_x ui_temp
execute store result storage ui:gun temp3.BulletData.hitbox.negy float -0.01 run scoreboard players get #hitbox_y ui_temp