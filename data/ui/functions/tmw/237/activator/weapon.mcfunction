# 武装系ウェポン発動

# 速度更新
    execute store result score $speed ui_temp run data get storage ui:gun temp.SPSpeed 100
    execute if score $speed ui_temp matches -100 store result score $speed ui_temp run data get storage ui:gun temp.now.Speed 100
    scoreboard players operation @s wep_speed = $speed ui_temp
    scoreboard players add @s wep_speed 100
    function ui:template/stats/shoot_speed

# スパショ
    execute if score $activator ui_temp matches 401..458 run playsound block.iron_trapdoor.close player @a ~ ~ ~ 2 0.6 0
    execute if score $activator ui_temp matches 401..458 run playsound block.piston.contract player @a ~ ~ ~ 1.5 0.8 0

# ジェットパック
    execute if score $activator ui_temp matches 455 run data modify storage ui:temp Effect set value [{Id:"instant_health",Duration:20,Amplifier:3b,ShowParticles:0b}]
    execute if score $activator ui_temp matches 455 run function ui:tmw/237/misc/giveeffect/

# ロケッティア
    execute if score $activator ui_temp matches 459 run playsound entity.ender_dragon.growl player @a ~ ~ ~ 1.2 1.5 0
    execute if score $activator ui_temp matches 459 run playsound block.piston.contract player @a ~ ~ ~ 1.5 0.6 0
    execute if score $activator ui_temp matches 459 run playsound block.iron_door.open player @a ~ ~ ~ 2 1.2 0

# ナイスダマ
    execute if score $activator ui_temp matches 460 run playsound block.beacon.activate player @a ~ ~ ~ 1.2 1.5 0
    execute if score $activator ui_temp matches 460 run playsound block.bell.resonate player @a ~ ~ ~ 1.2 1.5 0

# リフレクトレーザー
    execute if score $activator ui_temp matches 463 run playsound block.beacon.activate player @a ~ ~ ~ 1.2 1.5 0
    execute if score $activator ui_temp matches 463 run playsound block.piston.contract player @a ~ ~ ~ 1.5 0.6 0
    execute if score $activator ui_temp matches 463 run playsound block.iron_door.open player @a ~ ~ ~ 2 1.2 0

# キューインキ
    execute if score $activator ui_temp matches 464 run playsound block.iron_trapdoor.close player @a ~ ~ ~ 2 0.6 0
    execute if score $activator ui_temp matches 464 run playsound block.piston.contract player @a ~ ~ ~ 1.5 0.8 0
    execute if score $activator ui_temp matches 464 run playsound block.iron_door.open player @a ~ ~ ~ 2 1.2 0
