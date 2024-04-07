execute if entity @s[tag=tmw237_reflected.up] positioned ~-4 ~-4 ~-4 if entity @e[tag=!ui_temp_team,tag=!tmw_237_sub_mult,predicate=ui:load_unhurtable,dx=9,dy=5,dz=9,limit=1,sort=nearest] run tag @e[tag=!ui_temp_team,tag=!tmw_237_sub_mult,predicate=ui:load_unhurtable,dx=9,dy=5,dz=9,limit=1,sort=nearest] add tmw272_reflect.target
execute if entity @s[tag=tmw237_reflected.down] positioned ~4 ~4 ~4 if entity @e[tag=!ui_temp_team,tag=!tmw_237_sub_mult,predicate=ui:load_unhurtable,dx=-9,dy=-5,dz=-9,limit=1,sort=nearest] run tag @e[tag=!ui_temp_team,tag=!tmw_237_sub_mult,predicate=ui:load_unhurtable,dx=-9,dy=-5,dz=-9,limit=1,sort=nearest] add tmw272_reflect.target
execute if entity @s[tag=tmw237_reflected.east] positioned ~-4 ~-4 ~-4 if entity @e[tag=!ui_temp_team,tag=!tmw_237_sub_mult,predicate=ui:load_unhurtable,dx=5,dy=9,dz=9,limit=1,sort=nearest] run tag @e[tag=!ui_temp_team,tag=!tmw_237_sub_mult,predicate=ui:load_unhurtable,dx=5,dy=9,dz=9,limit=1,sort=nearest] add tmw272_reflect.target
execute if entity @s[tag=tmw237_reflected.west] positioned ~4 ~4 ~4 if entity @e[tag=!ui_temp_team,tag=!tmw_237_sub_mult,predicate=ui:load_unhurtable,dx=-5,dy=-9,dz=-9,limit=1,sort=nearest] run tag @e[tag=!ui_temp_team,tag=!tmw_237_sub_mult,predicate=ui:load_unhurtable,dx=-5,dy=-9,dz=-9,limit=1,sort=nearest] add tmw272_reflect.target
execute if entity @s[tag=tmw237_reflected.south] positioned ~-4 ~-4 ~-4 if entity @e[tag=!ui_temp_team,tag=!tmw_237_sub_mult,predicate=ui:load_unhurtable,dx=9,dy=9,dz=5,limit=1,sort=nearest] run tag @e[tag=!ui_temp_team,tag=!tmw_237_sub_mult,predicate=ui:load_unhurtable,dx=9,dy=9,dz=5,limit=1,sort=nearest] add tmw272_reflect.target
execute if entity @s[tag=tmw237_reflected.north] positioned ~4 ~4 ~4 if entity @e[tag=!ui_temp_team,tag=!tmw_237_sub_mult,predicate=ui:load_unhurtable,dx=-9,dy=-9,dz=-5,limit=1,sort=nearest] run tag @e[tag=!ui_temp_team,tag=!tmw_237_sub_mult,predicate=ui:load_unhurtable,dx=-9,dy=-9,dz=-5,limit=1,sort=nearest] add tmw272_reflect.target

execute if entity @e[tag=tmw272_reflect.target] facing entity @e[tag=tmw272_reflect.target,limit=1,sort=nearest] eyes run teleport @s ^ ^ ^0.5 ~ ~

execute unless entity @e[tag=tmw272_reflect.target] store result score #rotation_x ui_temp run data get entity @s Rotation.[0]
execute unless entity @e[tag=tmw272_reflect.target] if entity @s[tag=tmw237_reflected.up] store result entity @s Rotation.[1] float -1 run data get entity @s Rotation.[1]
execute unless entity @e[tag=tmw272_reflect.target] if entity @s[tag=tmw237_reflected.down] store result entity @s Rotation.[1] float -1 run data get entity @s Rotation.[1]
execute unless entity @e[tag=tmw272_reflect.target] if entity @s[tag=tmw237_reflected.east] store result entity @s Rotation.[0] float -1 run scoreboard players get #rotation_x ui_temp
execute unless entity @e[tag=tmw272_reflect.target] if entity @s[tag=tmw237_reflected.west] store result entity @s Rotation.[0] float -1 run scoreboard players get #rotation_x ui_temp
execute unless entity @e[tag=tmw272_reflect.target] if entity @s[tag=tmw237_reflected.south] store result score #rotation_x ui_temp run data get entity @s Rotation.[0] -1
execute unless entity @e[tag=tmw272_reflect.target] if entity @s[tag=tmw237_reflected.south] store result entity @s Rotation.[0] float 1 run scoreboard players operation #rotation_x ui_temp -= #180 ui_num
execute unless entity @e[tag=tmw272_reflect.target] if entity @s[tag=tmw237_reflected.north] store result score #rotation_x ui_temp run data get entity @s Rotation.[0] -1
execute unless entity @e[tag=tmw272_reflect.target] if entity @s[tag=tmw237_reflected.north] store result entity @s Rotation.[0] float 1 run scoreboard players operation #rotation_x ui_temp -= #180 ui_num

tag @s[tag=tmw237_reflected.up] remove tmw237_reflected.up
tag @s[tag=tmw237_reflected.down] remove tmw237_reflected.down
tag @s[tag=tmw237_reflected.east] remove mw237_reflected.east
tag @s[tag=tmw237_reflected.west] remove tmw237_reflected.west
tag @s[tag=tmw237_reflected.south] remove tmw237_reflected.south
tag @s[tag=tmw237_reflected.north] remove tmw237_reflected.north
tag @p[tag=tmw272_reflect.target] remove tmw272_reflect.target