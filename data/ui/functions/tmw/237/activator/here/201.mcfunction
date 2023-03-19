# リコール

#
    playsound entity.chicken.egg player @a ~ ~ ~ 2 0.8 0
    particle totem_of_undying ~ ~1 ~ 0.3 0.6 0.3 0.1 15 normal

    summon marker ~ ~ ~ {Tags:["ui_temp_marker"]}
    data modify storage ui:temp temp.Pos set value [0.0d,0.0d,0.0d]
    execute store result storage ui:temp temp.Pos[0] double 1 run data get entity @s SpawnX
    execute store result storage ui:temp temp.Pos[1] double 1 run data get entity @s SpawnY
    execute store result storage ui:temp temp.Pos[2] double 1 run data get entity @s SpawnZ
    data modify entity @e[tag=ui_temp_marker,limit=1] Pos set from storage ui:temp temp.Pos
    execute positioned as @e[tag=ui_temp_marker,limit=1] run teleport @s ~ ~ ~
    kill @e[tag=ui_temp_marker]

    effect give @s resistance 5 3 false

    execute at @s run playsound entity.chicken.egg player @a ~ ~ ~ 2 0.8 0
    execute at @s run particle totem_of_undying ~ ~1 ~ 0.3 0.6 0.3 0.2 15 normal
