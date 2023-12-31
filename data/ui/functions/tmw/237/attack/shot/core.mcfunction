# 必要データ収集
    scoreboard players reset $pierce ui_temp
    execute unless score $burst_alt.id ui_temp matches 1.. run scoreboard players operation $number ui_temp = $maxburst ui_temp
    execute unless score $burst_alt.id ui_temp matches 1.. run scoreboard players operation $number ui_temp -= $burst ui_temp
    execute unless score $burst_alt.id ui_temp matches 1.. run scoreboard players add $number ui_temp 1
    execute unless score $burst ui_temp matches 1 store result score $ct ui_temp run data get storage ui:gun temp2.ShotCT
    execute if score $burst ui_temp matches 1 store result score $ct ui_temp run data get storage ui:gun temp2.BurstCT
    execute store result score $range ui_temp run data get storage ui:gun temp2.Range
    execute store result score $rangetype ui_temp run data get storage ui:gun temp2.RangeType
    execute store result score $damage ui_temp run data get storage ui:gun temp2.Damage
    execute if data storage ui:gun temp2.ExplodeDamage unless data storage ui:gun temp2.ExplodeDamage.near unless data storage ui:gun temp2.ExplodeDamage.far store result score $explode_damage ui_temp run data get storage ui:gun temp2.ExplodeDamage
    execute if data storage ui:gun temp2.ExplodeDamage.near store result score $explode_damage.near ui_temp run data get storage ui:gun temp2.ExplodeDamage.near
    execute if data storage ui:gun temp2.ExplodeDamage.far store result score $explode_damage.far ui_temp run data get storage ui:gun temp2.ExplodeDamage.far
    execute store result score $multishot ui_temp run data get storage ui:gun temp2.MultiShot
    execute store result score $speed ui_temp run data get storage ui:gun temp2.Speed
    execute store result score $speed.plus ui_temp run data get storage ui:gun temp2.SpeedPlus
    execute store result score $pierce ui_temp run data get storage ui:gun temp2.Pierce
    execute if entity @s[nbt={OnGround:1b}] store result score $spread ui_temp run data get storage ui:gun temp2.Spread
    execute if entity @s[nbt={OnGround:0b}] store result score $spread ui_temp run data get storage ui:gun temp2.AirSpread
    execute if entity @s[nbt={OnGround:1b}] store result score $spreadtype ui_temp run data get storage ui:gun temp2.SpreadType
    execute if entity @s[nbt={OnGround:0b}] store result score $spreadtype ui_temp run data get storage ui:gun temp2.AirSpreadType
    execute if data storage ui:gun temp2.FreeHitLength store result score $freehitlength ui_temp run data get storage ui:gun temp2.FreeHitLength
    execute if data storage ui:gun temp2.DamageFree store result score $damage.free ui_temp run data get storage ui:gun temp2.DamageFree
    scoreboard players set $speed.add ui_temp 0

    execute if score $bursttype ui_temp matches 11 if score $shotmode ui_temp matches 2 run function ui:tmw/237/attack/shot/core_data.burst11
    # 弾
    execute store result score $particle.fly ui_temp run data get storage ui:gun temp2.FlyParticle
    execute store result score $particle.end ui_temp run data get storage ui:gun temp2.EndParticle

# FlyParticle114限定
    execute if score $particle.fly ui_temp matches 114 run scoreboard players operation $damage ui_temp = @s ui_tmw237_drained_damage
    execute if score $particle.fly ui_temp matches 114 if score @s ui_tmw237_drained_damage matches 50..99 run scoreboard players set $multishot ui_temp 3
    execute if score $particle.fly ui_temp matches 114 if score @s ui_tmw237_drained_damage matches 100..149 run scoreboard players set $multishot ui_temp 5
    execute if score $particle.fly ui_temp matches 114 if score @s ui_tmw237_drained_damage matches 150..199 run scoreboard players set $multishot ui_temp 7
    execute if score $particle.fly ui_temp matches 114 if score @s ui_tmw237_drained_damage matches 200.. run scoreboard players set $multishot ui_temp 9
    execute if score $particle.fly ui_temp matches 114 run scoreboard players set @s ui_tmw237_drained_damage 0

# burst12限定
    execute if score $bursttype ui_temp matches 12 if score $multibullet ui_temp matches 1.. run scoreboard players operation $burst_alt ui_temp = $burst.max ui_temp
    execute if score $bursttype ui_temp matches 12 if score $multibullet ui_temp matches 1.. run scoreboard players add $burst_alt ui_temp 1
    execute if score $bursttype ui_temp matches 12 if score $multibullet ui_temp matches 1.. run scoreboard players remove $multibullet ui_temp 1

# チャージ補正
    execute if score $burst_alt.id ui_temp matches 1..99 run function ui:tmw/237/attack/shot/burst4
    execute if score $burst_alt.id ui_temp matches 101..199 run function ui:tmw/237/attack/shot/burst5
    execute if score $burst_alt.id ui_temp matches 200..299 run function ui:tmw/237/attack/shot/burst8
    execute if score $burst_alt.id ui_temp matches 301..399 run function ui:tmw/237/attack/shot/burst9

# burst11限定
    execute if score $bursttype ui_temp matches 11 if score $shotmode ui_temp matches 2 run scoreboard players set $chargetime ui_temp 0
    execute if score $bursttype ui_temp matches 11 if score $shotmode ui_temp matches 1 run scoreboard players add $shottime ui_temp 1
    execute if score $bursttype ui_temp matches 11 if score $shotmode ui_temp matches 1 run scoreboard players set $changed ui_temp 1

# burst13_14 alt.idを利用するため下に配置
    execute if score $bursttype ui_temp matches 13..15 run function ui:tmw/237/attack/shot/burst13_14

# タイプごとに拡散して発射
    #function ui:tmw/237/attack/shot/loop
    execute if score $spreadtype ui_temp matches 1 anchored eyes positioned ^ ^ ^ run function ui:tmw/237/attack/shot/spreadmanager/1
    execute if score $spreadtype ui_temp matches 2 anchored eyes positioned ^ ^ ^ run function ui:tmw/237/attack/shot/spreadmanager/2
    execute if score $spreadtype ui_temp matches 3 anchored eyes positioned ^ ^ ^ run function ui:tmw/237/attack/shot/spreadmanager/3

# スコア依存で足元に塗り判定発生
    execute store result score $temp ui_temp run data get storage ui:gun temp2.ShotFootStep
    execute if score $temp ui_temp matches 1.. run function ui:tmw/237/attack/shot/shotfootstep/manager

# 発射音
    execute store result score $temp ui_temp run data get storage ui:gun temp2.Sound
    execute if score $temp ui_temp matches 1 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.2 1.6 0
    execute if score $temp ui_temp matches 2 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.4 1.4 0
    execute if score $temp ui_temp matches 3 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.6 1.2 0
    execute if score $temp ui_temp matches 4 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.8 1.0 0
    execute if score $temp ui_temp matches 5 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 2.0 0.9 0
    execute if score $temp ui_temp matches 6 run playsound entity.firework_rocket.large_blast player @a ~ ~ ~ 2.0 1.3 0
    execute if score $temp ui_temp matches 6 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 2.0 1 0
    execute if score $temp ui_temp matches 101 run playsound minecraft:entity.bat.loop player @a ~ ~ ~ 1 1.6 0
    execute if score $temp ui_temp matches 102 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 2.0 0.9 0
    execute if score $temp ui_temp matches 102 run data modify storage ui:temp Effect set value [{Id:"jump_boost",Duration:20,Amplifier:6b,ShowParticles:0b}]
    execute if score $temp ui_temp matches 102 run function ui:tmw/237/misc/giveeffect/
    execute if score $temp ui_temp matches -1 run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.8 0.8 0

# クールタイム解除時刻.mod
    execute store result score $cooltime ui_temp run time query gametime
    scoreboard players operation $cooltime ui_temp += $ct ui_temp
    execute if score $burst ui_temp matches 1.. run scoreboard players remove $burst ui_temp 1

# 成功
    tag @s add ui_temp_success

# 変更した
    scoreboard players set $changed ui_temp 1