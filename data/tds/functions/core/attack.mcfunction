# ダメージを与える

# Mobに適用
    #function tds:core/health_subtract

#
    scoreboard players operation $Damage_Log tds_dmg = $Damage tds_dmg

# アメジスト耐性によるダメージ減算と耐性増加
    execute as @s if score $DamageType tds_dmg matches 7 run function tds:core/amethyst
# 属性処理
    # 火属性ならダメージ値の２００００分の１の炎上をスタックする
    #execute as @s if score $DamageType tds_dmg matches 2 run function tds:core/fire
    # 冷気属性ならダメージ値の２００００分の１の冷気をスタックする
    #execute as @s if score $DamageType tds_dmg matches 3 run function tds:core/cold
# MobのHealthよりダメージが高い場合Healthに設定
    scoreboard players operation $Damage tds_dmg < $Health tds_dmg
# Health減算
    scoreboard players operation $Health tds_dmg -= $Damage tds_dmg
# ここで不死のトーテム起動
        execute if score $Health tds_dmg matches ..0 if entity @s[type=player,nbt={SelectedItem:{id:"minecraft:totem_of_undying"}}] run function tds:core/totem
        execute if score $Health tds_dmg matches ..0 if entity @s[type=player,nbt={Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying"}]}] run function tds:core/totem
# Mobへ代入
    # Player
        execute if entity @s[type=player] run scoreboard players operation $Health tds_dmg /= $100 tds_dmg
        execute if entity @s[type=player] run scoreboard players operation @s tds_hps = $Health tds_dmg
        execute if entity @s[type=player] run scoreboard players set @s ui_dr 1

    # Mob
        execute if entity @s[type=!player] if score $Health tds_dmg matches 1.. store result entity @s Health float 0.0001 run scoreboard players get $Health tds_dmg
        execute if entity @s[type=!player,type=!ender_dragon] if score $Health tds_dmg matches ..0 run kill @s
        execute if entity @s[type=!player] if score $Health tds_dmg matches ..0 run scoreboard players set $Lethal tds_dmg 1
        execute if entity @s[type=ender_dragon] if score $Health tds_dmg matches ..0 run data merge entity @s {DragonPhase:9}

    # プレイヤーじゃないなら見た目だけダメージ （オバフロ形式は直後にダメージを喰らうと100%バグるのが分かったので利用中止）
    # プレイヤーはエフェクトクラウドで一瞬耐性を付ける
        execute if entity @s[type=!player,type=!ender_dragon] if score $Health tds_dmg matches 1.. run function tds:core/damage
        execute if entity @s[type=player] run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:11,Amplifier:127b,Duration:1,ShowParticles:0b},{Id:7,Amplifier:0b,Duration:1,ShowParticles:0b}]}

    # プレイヤーかつヘルス0なら死亡メッセージ
        ## 攻撃者特定
        #execute if score $Health tds_dmg matches ..0 if score $Attacker tds_dmg matches 1.. as @e[tag=!tds_nolog,type=!#ui:unhurtable] if score @s ui_id = $Attacker tds_dmg run tag @s add tds_tempa
        execute if score $Health tds_dmg matches ..0 if score $Attacker tds_dmg matches 1.. as @a if score @s ui_id = $Attacker tds_dmg run tag @s add tds_tempa
        scoreboard players operation $Assist tds_dmg = @s tds_recent_attacked_by
        execute if score $Health tds_dmg matches ..0 if score $Assist tds_dmg matches 1.. as @a if score @s ui_id = $Assist tds_dmg unless score @s ui_id = $Attacker tds_dmg run tag @s add tds_tempb
        ## キルカウント + キルログ
        execute if entity @s[type=player] if score $DeathMessage tds_dmg matches 1.. if score $Health tds_dmg matches ..0 run function tds:core/killlog

# 返り値をここで記録（ ♥3,6ダメージ → 60000 ）
    scoreboard players operation $Return tds_dmg = $Damage tds_dmg
    tag @a[tag=tds_tempa] add tds_return_attacker

# ダメージを数値表示
    execute if score $Damage tds_dmg matches 1.. if score $damage_indicator ui_world matches 1 run function tds:core/num_indicator

# 演出
    execute if score $Damage tds_dmg matches 1.. if score $DisableParticle tds_dmg matches 0 run function tds:core/damage_indicator

# 次のヒットに向けてこの攻撃者を記録する
    execute if score $Attacker tds_dmg matches 1.. run scoreboard players operation @s tds_recent_attacked_by = $Attacker tds_dmg

# リセット
    scoreboard players reset $Damage tds_dmg
    scoreboard players reset $Damage_Log tds_dmg
    scoreboard players reset $DamageType tds_dmg
    scoreboard players reset $DeathMessage tds_dmg
    scoreboard players reset $Health tds_dmg
    scoreboard players reset $Attacker tds_dmg
    scoreboard players reset $Assist tds_dmg
    tag @a[tag=tds_tempa] remove tds_tempa
    tag @a[tag=tds_tempb] remove tds_tempb
    data remove storage ui:temp Name
