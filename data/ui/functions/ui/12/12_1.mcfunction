#動く
execute if entity @s[tag=tester_move] run function ui:ui/12/tester_move/

#的の転置
execute as @e[tag=ui_12_2] at @s unless entity @e[tag=ui_12_1,distance=..0.9] run kill @s
execute unless entity @e[tag=ui_12_2,distance=..0.9] run summon minecraft:skeleton ~ ~ ~ {NoAI:1b,Tags:["damage_tester","ui_12_2"],Attributes:[{Name:"generic.max_health",Base:1000}],Health:1000f,Silent:1,ArmorItems:[{},{},{},{id:"stone_button",Count:1b}],ArmorDropChances:[-1f,-1f,-1f,-1f],DeathLootTable:"none"}
execute if entity @e[tag=ui_12_2,distance=..0.9] run teleport @e[tag=ui_12_2,distance=..0.9] ~ ~ ~ ~ ~

#的のHPをリゲインしダメージを出力
execute store result score $temp ui_temp run data get entity @e[tag=ui_12_2,sort=nearest,limit=1] Health -10
execute unless score $temp ui_temp matches -10000 run function ui:ui/12/dt

#コンボ中断
execute if entity @s[nbt={PortalCooldown:1}] run function ui:ui/12/pc

#近くでしゃがむと消滅
execute facing entity @a[distance=..2,scores={ui_st2=1},gamemode=!adventure,gamemode=!spectator] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @a[distance=..2,scores={ui_st2=1},gamemode=creative] run data modify entity @e[tag=ui_12_2,sort=nearest,limit=1] ArmorItems.[0] set from entity @a[distance=..2,scores={ui_st2=1},gamemode=creative,limit=1] Inventory.[{Slot:100b}]
execute if entity @a[distance=..2,scores={ui_st2=1},gamemode=creative] run data modify entity @e[tag=ui_12_2,sort=nearest,limit=1] ArmorItems.[1] set from entity @a[distance=..2,scores={ui_st2=1},gamemode=creative,limit=1] Inventory.[{Slot:101b}]
execute if entity @a[distance=..2,scores={ui_st2=1},gamemode=creative] run data modify entity @e[tag=ui_12_2,sort=nearest,limit=1] ArmorItems.[2] set from entity @a[distance=..2,scores={ui_st2=1},gamemode=creative,limit=1] Inventory.[{Slot:102b}]
execute if entity @a[distance=..2,scores={ui_st2=1},gamemode=creative] run data modify entity @e[tag=ui_12_2,sort=nearest,limit=1] ArmorItems.[3] set from entity @a[distance=..2,scores={ui_st2=1},gamemode=creative,limit=1] Inventory.[{Slot:103b}]
execute if entity @a[distance=..2,scores={ui_st2=10..},gamemode=!adventure,gamemode=!spectator] run function ui:ui/12/st