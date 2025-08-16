# 保存
    data modify storage ui:gun temp2_.temp set from storage ui:gun temp2

# 上書き
    data modify storage ui:gun temp2 merge from storage ui:gun temp2.Air

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

# 戻す
    data modify storage ui:gun temp2 set from storage ui:gun temp2_.temp
    data remove storage ui:gun temp2_