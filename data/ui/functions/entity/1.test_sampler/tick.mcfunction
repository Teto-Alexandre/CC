# AI時間カウント
scoreboard players add @s ui_is 1
scoreboard players operation $entity.time ui_temp = @s ui_is
scoreboard players operation $entity.time ui_temp %= #500 ui_num
execute positioned ~ ~30 ~ if entity @a[tag=!ui_temp_team,predicate=ui:load_unhurtable,distance=..29] run scoreboard players add @s ui_is2 1

# コア移動
execute unless score $entity.time ui_temp matches 201..240 facing entity @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute unless score $entity.time ui_temp matches 201..240 if block ^ ^ ^2 #ui:nocol_water at @s run teleport @s ^ ^ ^0.1 ~ ~
execute if score $entity.time ui_temp matches 201..240 if block ^ ^ ^2 #ui:nocol_water unless entity @a[tag=!ui_temp_team,predicate=ui:load_unhurtable,distance=..3] at @s run teleport @s ^ ^ ^0.75 ~ ~

# 同期
execute at @s rotated as @s run teleport @e[tag=entity.hitbox] ~ ~ ~ ~ ~
execute if score @s ui_is matches 2.. at @s rotated as @s run teleport @e[tag=entity.parts1] ~ ~ ~ ~ ~
execute if score @s ui_is matches 2.. at @s rotated as @e[tag=entity.parts2] run teleport @e[tag=entity.parts2] ~ ~ ~ ~5 ~
execute if score @s ui_is matches 2.. at @s rotated as @e[tag=entity.parts3] run teleport @e[tag=entity.parts3] ~ ~ ~ ~-5 ~

# 技術的な物
execute if entity @s[tag=entity.modifier.12] run particle large_smoke ~ ~1 ~ 0 0 0 0.1 2 force

execute if entity @s[tag=shield.breaked] run tellraw @a [{"text":"TF-Vanguard","color": "yellow"},{"text":"のシールドが破壊されました","color": "white"}]
execute if entity @s[tag=shield.repair] run tellraw @a [{"text":"TF-Vanguard","color": "yellow"},{"text":"のシールドが復活しました","color": "white"}]

execute at @s run fill ~-0.5 ~-1.5 ~-0.5 ~0.5 ~1.5 ~0.5 yellow_wool replace #ui:wools

execute if score $entity.time ui_temp matches 141..200 at @s run particle dust 1 1 0.5 2 ~ ~1.35 ~ 0.7 0.7 0.7 0 2 force
execute if score $entity.time ui_temp matches 141 at @s run playsound block.beacon.activate player @a ~ ~ ~ 1.3 1.5 0
execute if score $entity.time ui_temp matches 141 at @s run playsound entity.warden.sonic_charge player @a ~ ~ ~ 2 1.5 0
execute if score $entity.time ui_temp matches 141..160 at @s run particle firework ~ ~1.35 ~ 0.7 0.7 0.7 0.1 3 force
execute if score $entity.time ui_temp matches 141 run tag @s remove 1_exploded

execute if score $entity.time ui_temp matches 201..240 at @s run particle dust 1 1 0.5 2.5 ~ ~1.35 ~ 1.2 1.2 1.2 0 20 force
execute if score $entity.time ui_temp matches 201..240 at @s run particle block yellow_concrete ~ ~1.35 ~ 1.2 1.2 1.2 0 20 force
execute if score $entity.time ui_temp matches 201..240 at @s unless score $difficulty ui_world matches 1.. run fill ~-1.2 ~-1.2 ~-1.2 ~1.2 ~1.2 ~1.2 yellow_wool replace #ui:wools
execute if score $entity.time ui_temp matches 201..240 at @s if score $difficulty ui_world matches 1 run fill ~-1.8 ~-1.8 ~-1.8 ~1.8 ~1.8 ~1.8 yellow_wool replace #ui:wools
execute if score $entity.time ui_temp matches 201..240 at @s if score $difficulty ui_world matches 2 run fill ~-2.4 ~-2.4 ~-2.4 ~2.4 ~2.4 ~2.4 yellow_wool replace #ui:wools
execute if score $entity.time ui_temp matches 201..240 at @s if score $difficulty ui_world matches 3 run fill ~-3.0 ~-3.0 ~-3.0 ~3.0 ~3.0 ~3.0 yellow_wool replace #ui:wools

# 突進の最後には爆発
execute at @s[tag=!1_exploded] if score $entity.time ui_temp matches 201..240 unless block ^ ^ ^2 #ui:nocol_water run function ui:entity/1.test_sampler/explode
execute at @s[tag=!1_exploded] if score $entity.time ui_temp matches 201..240 if entity @a[tag=!ui_temp_team,predicate=ui:load_unhurtable,distance=..3] run function ui:entity/1.test_sampler/explode
execute at @s[tag=!1_exploded] if score $entity.time ui_temp matches 241 run function ui:entity/1.test_sampler/explode

#
scoreboard players operation $entity.time ui_temp %= #200 ui_num
execute if score $entity.time ui_temp matches 180.. at @s rotated as @e[tag=entity.parts2] run teleport @e[tag=entity.parts2] ~ ~-1.3 ~ ~ ~
execute if score $entity.time ui_temp matches 0 run function ui:entity/1.test_sampler/ring_fire

#
scoreboard players operation $entity.time ui_temp %= #20 ui_num
execute if score $entity.time ui_temp matches 0 run function ui:entity/1.test_sampler/1sec

#
scoreboard players operation $entity.time ui_temp %= #10 ui_num
execute if score $entity.time ui_temp matches 0 run data merge storage ui:common {input:{Mode:"create",Var:-10110,Var2:3,Rand:{X:150,Y:10,Z:150}}}
execute if score $entity.time ui_temp matches 0 run function ui:common/particle

execute if score $entity.time ui_temp matches 5 if score @s ui_is2 matches 80.. at @s run function ui:entity/1.test_sampler/missile_fire

#
execute unless score $difficulty ui_world matches 1.. run scoreboard players operation $entity.time ui_temp %= #3 ui_num
execute if score $difficulty ui_world matches 1..2 run scoreboard players operation $entity.time ui_temp %= #2 ui_num
execute if score $difficulty ui_world matches 3 run scoreboard players set $entity.time ui_temp 0
execute if score $entity.time ui_temp matches 0 positioned ~ ~2.6 ~ rotated as @e[tag=entity.parts3] rotated ~ 0 positioned ^ ^ ^0.4 run function ui:entity/1.test_sampler/head_shot
