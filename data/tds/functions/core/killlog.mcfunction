# プレイヤーかつヘルス0なら死亡メッセージ

## 進捗
    execute as @a[tag=tds_tempa] if entity @s[advancements={ui:add/kill/meteor=false}] if score @s ui_tmw237_boost matches 70..130 run advancement grant @s only ui:add/kill/meteor
    execute if entity @s[nbt={OnGround:0b}] as @a[tag=tds_tempa,nbt={OnGround:0b}] if entity @s[advancements={ui:add/kill/niceshot=false}] run advancement grant @s only ui:add/kill/niceshot
    execute as @a[tag=tds_tempa] if entity @s[advancements={ui:add/kill/overkill=false}] if score $Damage_Log tds_dmg matches 300000.. run advancement grant @s only ui:add/kill/overkill

## キルカウント
    scoreboard players add @a[tag=tds_tempa] ui_s_kill 1
    execute unless score $DeathMessage tds_dmg matches 11 run scoreboard players add @a[tag=tds_tempb] ui_s_assist 1
    execute if score $DeathMessage tds_dmg matches 11 run scoreboard players add @a[tag=tds_tempb] ui_s_kill 1

## 距離計測
    data merge storage ui:common {input:{Mode:"dist"}}
    execute at @s as @a[tag=tds_tempa] run function ui:common/distance
    scoreboard players operation @a[tag=tds_tempa] ui_s_kill_dist > $Return ui_temp

## キルログ
    execute if score $DeathMessage tds_dmg matches 1 run function tds:message/1
    execute if score $DeathMessage tds_dmg matches 2 run function tds:message/2
    execute if score $DeathMessage tds_dmg matches 3 run function tds:message/3
    execute if score $DeathMessage tds_dmg matches 4 run function tds:message/4
    execute if score $DeathMessage tds_dmg matches 5 run function tds:message/5
    execute if score $DeathMessage tds_dmg matches 6 run function tds:message/6
    execute if score $DeathMessage tds_dmg matches 7 run function tds:message/7
    execute if score $DeathMessage tds_dmg matches 8 run function tds:message/8
    execute if score $DeathMessage tds_dmg matches 9 run function tds:message/9
    execute if score $DeathMessage tds_dmg matches 10 run function tds:message/10
    execute if score $DeathMessage tds_dmg matches 11 run function tds:message/11
    execute if score $DeathMessage tds_dmg matches 12 run function tds:message/12
    execute if score $DeathMessage tds_dmg matches 13 run function tds:message/13
    execute if score $DeathMessage tds_dmg matches 14 run function tds:message/14
    execute if score $DeathMessage tds_dmg matches 15 run function tds:message/15
    execute if score $DeathMessage tds_dmg matches 16 run function tds:message/16
    execute if score $DeathMessage tds_dmg matches 17 run function tds:message/17
    execute if score $DeathMessage tds_dmg matches 18 run function tds:message/18