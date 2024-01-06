# ダメージを計算

# 引数データをコピー
    execute if entity @s[gamemode=creative] run scoreboard players set $Damage tds_dmg 0
    execute unless data storage tds: temp.DeathMessage run data modify storage tds: temp.DeathMessage set value 0
    execute unless data storage tds: temp.EPF run data modify storage tds: temp.EPF set value -1
    execute store result score $DisableParticle tds_dmg run data get storage tds: temp.DisableParticle
    execute unless data storage tds: temp.BypassArmor run data modify storage tds: temp.BypassArmor set value 0
    execute unless data storage tds: temp.BypassResistance run data modify storage tds: temp.BypassResistance set value 0b

# 攻撃者情報を含むか確認
    scoreboard players set $UUID tds_dmg 0
    execute if data storage tds: temp.Owner run scoreboard players set $UUID tds_dmg 1

# 計算に必要な値を取得
    #function tds:core/get_status
    execute unless score @s tds_hps matches -2147483648.. store result score $Health tds_dmg run data get entity @s Health 10000
    execute if score @s tds_hps matches -2147483648.. store result score $Health tds_dmg run scoreboard players operation @s tds_hps *= $100 tds_dmg
    execute unless data storage tds: {temp:{BypassArmor:-1}} run function tds:core/armor/manager
    execute store result score $DeathMessage tds_dmg run data get storage tds: temp.DeathMessage
    execute store result score $EPF tds_dmg run data get storage tds: temp.EPF
    execute if entity @s[type=!player] unless score $EPF tds_dmg matches 0.. run function tds:core/epf/entity
    execute if entity @s[type=player] unless score $EPF tds_dmg matches 0.. run function tds:core/epf/player
    execute if data storage tds: {temp:{BypassArmor:-1}} run function tds:core/armor/full_bypass
    execute if data storage tds: {temp:{BypassResistance:0b}} store result score $Resistance tds_dmg run data get entity @s active_effects[{id:"minecraft:resistance"}].amplifier
    execute if data storage tds: {temp:{BypassResistance:0b}} if data entity @s active_effects[{id:"minecraft:resistance"}] run scoreboard players add $Resistance tds_dmg 1
    execute if data storage tds: {temp:{BypassResistance:1b}} run scoreboard players set $Resistance tds_dmg 0
    scoreboard players operation $Damage tds_dmg > $0 tds_dmg

# 与えるダメージの計算
    #function tds:core/calc
        #防具による軽減
    scoreboard players operation $CalcC tds_dmg = $defensePoints tds_dmg
    scoreboard players operation $CalcC tds_dmg < $9000 tds_dmg
    scoreboard players operation $CalcD tds_dmg = $10000 tds_dmg
    scoreboard players operation $CalcD tds_dmg -= $CalcC tds_dmg
    scoreboard players operation $CalcD tds_dmg /= $10 tds_dmg
    scoreboard players operation $Damage tds_dmg *= $CalcD tds_dmg
    scoreboard players operation $Damage tds_dmg /= $10 tds_dmg
        # エンチャントによる軽減
    scoreboard players operation $EPF tds_dmg < $25 tds_dmg
    scoreboard players operation $EPF tds_dmg *= $4 tds_dmg
    scoreboard players operation $CalcE tds_dmg = $100 tds_dmg
    scoreboard players operation $CalcE tds_dmg -= $EPF tds_dmg
    scoreboard players operation $Damage tds_dmg *= $CalcE tds_dmg
    scoreboard players operation $Damage tds_dmg /= $100 tds_dmg
        # 耐性による軽減
    scoreboard players operation $Resistance tds_dmg < $5 tds_dmg
    scoreboard players operation $Resistance tds_dmg *= $2 tds_dmg
    scoreboard players operation $CalcF tds_dmg = $10 tds_dmg
    scoreboard players operation $CalcF tds_dmg -= $Resistance tds_dmg
    scoreboard players operation $Damage tds_dmg *= $CalcF tds_dmg
    scoreboard players operation $Damage tds_dmg /= $10 tds_dmg
        # リセット
    scoreboard players reset $CalcA
    scoreboard players reset $CalcB
    scoreboard players reset $CalcB.2
    scoreboard players reset $CalcB.3
    scoreboard players reset $CalcC
    scoreboard players reset $CalcD
    scoreboard players reset $CalcE
    scoreboard players reset $CalcF
    scoreboard players reset $defensePoints
    scoreboard players reset $toughness
    scoreboard players reset $EPF
    scoreboard players reset $Resistance
    scoreboard players reset $Bypass

#===========================================================================

# ダメージクールタイムを使用
    execute if data storage tds: temp.DamageCooltime if score @s tds_damage_cooltime_time matches 1.. run function tds:core/damage_cooltime
    execute if data storage tds: temp.DamageCooltime unless score @s tds_damage_cooltime_time matches 1.. run function tds:core/first_damage_cooltime

#===========================================================================