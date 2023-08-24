# 一秒にやること

# オフハンドに持つんじゃない
    execute as @a if entity @s[scores={ui_tmw_id2=1..}] at @s run function ui:tmw/237/anti.offhand/text

# 死（液体に入ったら死ぬ）
    execute as @a[gamemode=!spectator,tag=!immune_water] at @s if block ~ ~ ~ #ui:liq if entity @e[type=player,dx=0] run function ui:common/highdamage

# チームカラーに合わせたチームにぶち込み
    execute as @a if score @s ui_team matches 1 run team join blue @s
    execute as @a if score @s ui_team matches 2 run team join red @s
    execute as @a if score @s ui_team matches 3 run team join yellow @s
    execute as @a if score @s ui_team matches 4 run team join green @s
    execute as @a if score @s ui_team matches 101 run team join chaos @s
    execute if score $module ui_world matches 1 as @a if score @s module matches 5 run team join rainbow @s
    execute if score $module ui_world matches 1 as @a if score @s module matches 5 run effect give @s glowing 2 0 true
    execute if score $module ui_world matches 1 as @a if score @s module matches 14 run scoreboard players set @s ui_tmw237_sprint_particle 25
    tag @a[tag=module19] remove module19
    execute if score $module ui_world matches 1 as @a if score @s module matches 19 run tag @s add module19
    execute if score $module ui_world matches 1 as @a if score @s module matches 46 run effect give @s slow_falling 2 0 true
    execute as @a[tag=spectate] run team join spectate @s

# 殴り合い防止
    effect give @a[nbt=!{Inventory:[]}] weakness 2 127 true
    effect give @a[nbt={Inventory:[]}] strength 2 0 true
    execute if score $module ui_world matches 1 as @a if score @s module matches 6 run effect clear @s weakness
    execute if score $module ui_world matches 1 as @a if score @s module matches 6 run effect give @s strength 2 0 true
    execute if score $module ui_world matches 1 as @a if score @s module matches 28 run scoreboard players add @s ui_paint 3

# 進捗
    execute as @a[gamemode=!spectator] if entity @s[advancements={ui:hidden/misc/beyond_the_sky=false}] at @s run function ui:advancements/beyond_the_sky
    execute as @a[gamemode=!spectator] if entity @s[advancements={ui:hidden/misc/enemy_base=false}] at @s run function ui:advancements/enemy_base
    execute as @a[scores={advancements=81..}] run advancement grant @s only ui:complete/root

# タイムカウント
execute if score $phase game_state matches 1.. if score $life ui_world matches 0.. unless entity @a[scores={ui_team=2,life=0..},tag=!spectate] unless entity @a[scores={ui_team=3,life=0..},tag=!spectate] unless entity @a[scores={ui_team=4,life=0..},tag=!spectate] run summon firework_rocket ~ ~ ~ {Tags:["ui_17_blue"],Life:0,LifeTime:18,Motion:[0.0,0.1,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
execute if score $phase game_state matches 1.. if score $life ui_world matches 0.. unless entity @a[scores={ui_team=2,life=0..},tag=!spectate] unless entity @a[scores={ui_team=3,life=0..},tag=!spectate] unless entity @a[scores={ui_team=4,life=0..},tag=!spectate] run tellraw @a {"text":"青チームが勝利しました","color":"aqua","bold":true}
execute if score $phase game_state matches 1.. if score $life ui_world matches 0.. unless entity @a[scores={ui_team=1,life=0..},tag=!spectate] unless entity @a[scores={ui_team=3,life=0..},tag=!spectate] unless entity @a[scores={ui_team=4,life=0..},tag=!spectate] run summon firework_rocket ~ ~ ~ {Tags:["ui_17_red"],Life:0,LifeTime:18,Motion:[0.0,0.1,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
execute if score $phase game_state matches 1.. if score $life ui_world matches 0.. unless entity @a[scores={ui_team=1,life=0..},tag=!spectate] unless entity @a[scores={ui_team=3,life=0..},tag=!spectate] unless entity @a[scores={ui_team=4,life=0..},tag=!spectate] run tellraw @a {"text":"赤チームが勝利しました","color":"light_purple","bold":true}
execute if score $phase game_state matches 1.. if score $life ui_world matches 0.. unless entity @a[scores={ui_team=2,life=0..},tag=!spectate] unless entity @a[scores={ui_team=1,life=0..},tag=!spectate] unless entity @a[scores={ui_team=4,life=0..},tag=!spectate] run summon firework_rocket ~ ~ ~ {Tags:["ui_17_yellow"],Life:0,LifeTime:18,Motion:[0.0,0.1,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
execute if score $phase game_state matches 1.. if score $life ui_world matches 0.. unless entity @a[scores={ui_team=2,life=0..},tag=!spectate] unless entity @a[scores={ui_team=1,life=0..},tag=!spectate] unless entity @a[scores={ui_team=4,life=0..},tag=!spectate] run tellraw @a {"text":"黄チームが勝利しました","color":"yellow","bold":true}
execute if score $phase game_state matches 1.. if score $life ui_world matches 0.. unless entity @a[scores={ui_team=2,life=0..},tag=!spectate] unless entity @a[scores={ui_team=3,life=0..},tag=!spectate] unless entity @a[scores={ui_team=1,life=0..},tag=!spectate] run summon firework_rocket ~ ~ ~ {Tags:["ui_17_green"],Life:0,LifeTime:18,Motion:[0.0,0.1,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;65535,16777215],FadeColors:[I;16777215]}]}}}}
execute if score $phase game_state matches 1.. if score $life ui_world matches 0.. unless entity @a[scores={ui_team=2,life=0..},tag=!spectate] unless entity @a[scores={ui_team=3,life=0..},tag=!spectate] unless entity @a[scores={ui_team=1,life=0..},tag=!spectate] run tellraw @a {"text":"緑チームが勝利しました","color":"green","bold":true}

# ボスバー
execute unless entity @e[tag=entity.core,scores={ui_gpc=1}] run bossbar set ui:entity1 players -

#
scoreboard players set $world ui_tc 1
