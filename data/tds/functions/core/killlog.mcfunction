# プレイヤーかつヘルス0なら死亡メッセージ

## 距離計測
    data merge storage ui:common {input:{Mode:"dist"}}
    execute at @s as @a[tag=tds_tempa] run function ui:common/distance
    scoreboard players operation @a[tag=tds_tempa] ui_s_kill_dist > $Return ui_temp

## 進捗
    scoreboard players operation $victim_id ui_id = @s ui_id
    execute as @a[tag=tds_tempa] if entity @s[advancements={ui:add/kill/meteor=false}] if score @s ui_tmw237_boost matches 70..130 run advancement grant @s only ui:add/kill/meteor
    execute as @a[tag=tds_tempa] if entity @s[advancements={ui:add/kill/overkill=false}] if score $Damage_Log tds_dmg matches 300000.. run advancement grant @s only ui:add/kill/overkill
    execute as @a[tag=tds_tempa] if entity @s[advancements={ui:add/kill/doublekill=false}] if score @s ui_s_kill_time matches 1.. run advancement grant @s only ui:add/kill/doublekill
    execute as @a[tag=tds_tempa] if entity @s[advancements={ui:add/kill/sniper_duel=false}] if score @s ui_s_kill_dist matches 30.. run advancement grant @s only ui:add/kill/sniper_duel
    execute if entity @s[nbt={OnGround:0b}] as @a[tag=tds_tempa,nbt={OnGround:0b}] if entity @s[advancements={ui:add/kill/niceshot=false}] run advancement grant @s only ui:add/kill/niceshot
    execute if entity @s[nbt={ActiveEffects:[{Id:14}]}] as @a[tag=tds_tempa] if entity @s[advancements={ui:add/kill/moving=false}] run advancement grant @s only ui:add/kill/moving
    execute if entity @s[tag=advancement_using_sp] as @a[tag=tds_tempa] if entity @s[advancements={ui:add/kill/giant=false}] run advancement grant @s only ui:add/kill/giant
    execute if entity @s[nbt={ActiveEffects:[{Id:11}]}] as @a[tag=tds_tempa] if entity @s[advancements={ui:add/kill/pierce=false}] run advancement grant @s only ui:add/kill/pierce
    execute if score @s ui_tmw237_boost matches 1..70 as @a[tag=tds_tempa] if entity @s[advancements={ui:add/kill/escape=false}] run advancement grant @s only ui:add/kill/escape
    execute as @a[tag=tds_tempa] if entity @s[advancements={ui:add/kill/revenge=false}] if score @s tds_recent_attacked_by = $victim_id ui_id run advancement grant @s only ui:add/kill/revenge
    scoreboard players reset $victim_id ui_id

##
    execute if score $gamemode ui_world matches 2 run function tds:core/gamemode/2.tag

## キルカウント
    scoreboard players add @a[tag=tds_tempa] ui_s_kill 1
    scoreboard players add @a[tag=tds_tempa] ui_s_kill_streak 1
    scoreboard players operation @a[tag=tds_tempa] ui_r_kill_streak > @a[tag=tds_tempa] ui_s_kill_streak
    scoreboard players set @a[tag=tds_tempa] ui_s_kill_time 40
    execute unless score $DeathMessage tds_dmg matches 11 run scoreboard players add @a[tag=tds_tempb] ui_s_assist 1
    execute if score $DeathMessage tds_dmg matches 11 run scoreboard players add @a[tag=tds_tempb] ui_s_kill 1

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