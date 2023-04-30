playsound block.honey_block.break player @a ~ ~ ~ 0.7 1 0

execute rotated ~ 0 if score $team ui_temp matches 1 run particle dust 0.5 1 1 1 ^ ^0.2 ^1.25 1 0.1 1 0 10 force
execute rotated ~ 0 if score $team ui_temp matches 1 run particle block light_blue_concrete ^ ^0.2 ^1.25 1 0.1 1 0 10 force
execute rotated ~ 0 if score $team ui_temp matches 2 run particle dust 1 0.5 1 1 ^ ^0.2 ^1.25 1 0.1 1 0 10 force
execute rotated ~ 0 if score $team ui_temp matches 2 run particle block pink_concrete ^ ^0.2 ^1.25 1 0.1 1 0 10 force
execute rotated ~ 0 if score $team ui_temp matches 3 run particle dust 1 1 0.5 1 ^ ^0.2 ^1.25 1 0.1 1 0 10 force
execute rotated ~ 0 if score $team ui_temp matches 3 run particle block yellow_concrete ^ ^0.2 ^1.25 1 0.1 1 0 10 force
execute rotated ~ 0 if score $team ui_temp matches 4 run particle dust 0.5 1 0.5 1 ^ ^0.2 ^1.25 1 0.1 1 0 10 force
execute rotated ~ 0 if score $team ui_temp matches 4 run particle block lime_concrete ^ ^0.2 ^1.25 1 0.1 1 0 10 force

# 前方に攻撃判定
    scoreboard players operation $Attacker tds_dmg = @s ui_id
    data modify storage ui:temp Name set value '{"text":"ローラー・レリック","color":"gray"}'
    scoreboard players set $damage_type ui_temp 1
    scoreboard players set $damage ui_temp 40
    execute positioned ^ ^ ^1.5 as @e[tag=!ui_temp_team,type=!#ui:unhurtable,tag=!ui_unhurtable,distance=..3,sort=nearest,limit=1] run function ui:tmw/237/projectile/hit.marker

#一時タグ削除
    tag @e[tag=ui_temp_team] remove ui_temp_team

execute rotated ~ 0 run summon marker ^-1.5 ^ ^0.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-1.5 ^ ^1.0 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-1.5 ^ ^1.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-1.5 ^ ^2.0 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-1.5 ^ ^2.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-1.0 ^ ^0.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-1.0 ^ ^1.0 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-1.0 ^ ^1.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-1.0 ^ ^2.0 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-1.0 ^ ^2.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-0.5 ^ ^0.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-0.5 ^ ^1.0 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-0.5 ^ ^1.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-0.5 ^ ^2.0 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-0.5 ^ ^2.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^0.0 ^ ^0.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^0.0 ^ ^1.0 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^0.0 ^ ^1.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^0.0 ^ ^2.0 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^0.0 ^ ^2.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^0.5 ^ ^0.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^0.5 ^ ^1.0 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^0.5 ^ ^1.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^0.5 ^ ^2.0 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^0.5 ^ ^2.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^1.0 ^ ^0.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^1.0 ^ ^1.0 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^1.0 ^ ^1.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^1.0 ^ ^2.0 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^1.0 ^ ^2.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^1.5 ^ ^0.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^1.5 ^ ^1.0 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^1.5 ^ ^1.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^1.5 ^ ^2.0 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^1.5 ^ ^2.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-1.5 ^-1 ^0.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-1.5 ^-1 ^1.0 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-1.5 ^-1 ^1.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-1.5 ^-1 ^2.0 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-1.5 ^-1 ^2.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-1.0 ^-1 ^0.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-1.0 ^-1 ^1.0 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-1.0 ^-1 ^1.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-1.0 ^-1 ^2.0 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-1.0 ^-1 ^2.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-0.5 ^-1 ^0.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-0.5 ^-1 ^1.0 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-0.5 ^-1 ^1.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-0.5 ^-1 ^2.0 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^-0.5 ^-1 ^2.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^0.0 ^-1 ^0.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^0.0 ^-1 ^1.0 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^0.0 ^-1 ^1.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^0.0 ^-1 ^2.0 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^0.0 ^-1 ^2.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^0.5 ^-1 ^0.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^0.5 ^-1 ^1.0 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^0.5 ^-1 ^1.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^0.5 ^-1 ^2.0 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^0.5 ^-1 ^2.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^1.0 ^-1 ^0.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^1.0 ^-1 ^1.0 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^1.0 ^-1 ^1.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^1.0 ^-1 ^2.0 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^1.0 ^-1 ^2.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^1.5 ^-1 ^0.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^1.5 ^-1 ^1.0 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^1.5 ^-1 ^1.5 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^1.5 ^-1 ^2.0 {Tags:["ui_temp_particle"]}
execute rotated ~ 0 run summon marker ^1.5 ^-1 ^2.5 {Tags:["ui_temp_particle"]}
function ui:tmw/237/misc/particle_paint
kill @e[tag=ui_temp_particle]

#クールタイム（MPの概念がないのでとりあえず仮追加）
scoreboard players set @s ui_ct 0