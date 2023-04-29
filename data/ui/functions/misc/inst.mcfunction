tellraw @s [{"color":"gray","text":"system"},{"color":"green","text":"> "},{"color":"gold","text":"ColorCrush"},{"color":"white","text":" が起動しました"}]
tellraw @s [{"color":"gray","text":"system"},{"color":"green","text":"> "},{"color":"white","translate":"Recommend to use resourcepack"}]
tellraw @s [{"color":"gray","text":"system"},{"color":"green","text":"> "},{"text":"  - Made by teto","color":"gold"}]

function ui:misc/reset_gears
function ui:misc/reset_preset

title @s times 0 20 0

advancement grant @s only ui:main/root

advancement grant @s only ui:main/game/node1
advancement grant @s only ui:main/game/node2

advancement grant @s only ui:main/kill/node1
advancement grant @s only ui:main/kill/node2

advancement grant @s only ui:main/paint/node1
advancement grant @s only ui:main/paint/node2

advancement grant @s only ui:main/assist/node1
advancement grant @s only ui:main/assist/node2

advancement grant @s only ui:main/sub/node1
advancement grant @s only ui:main/sub/node2

advancement grant @s only ui:main/sp/node1
advancement grant @s only ui:main/sp/node2

advancement grant @s only ui:main/kill_streak/node1
advancement grant @s only ui:main/kill_streak/node2

advancement grant @s only ui:add/root

advancement grant @s only ui:add/kill/node1
advancement grant @s only ui:add/kill/node2
advancement grant @s only ui:add/kill/node3
advancement grant @s only ui:add/kill/node4

advancement grant @s only ui:add/basic/node1
advancement grant @s only ui:add/basic/node2

scoreboard players set @s ui_st 0
scoreboard players set @s ui_gct -1
scoreboard players set @s ui_bc -1

scoreboard players set @s health_old -2147483648
scoreboard players set @s health 0
scoreboard players set @s health_regen 0
scoreboard players set @s health_regen_temp 0
scoreboard players set @s shoot_speed 0
scoreboard players set @s move_speed 500
scoreboard players set @s armor_old -2147483648
scoreboard players set @s armor 0
scoreboard players set @s blast_protection 0
scoreboard players set @s norma_damage 1000
scoreboard players set @s sub_damage 100
scoreboard players set @s vsobj_damage 100
scoreboard players set @s blast_damage 100
scoreboard players set @s respawn_acc 100
scoreboard players set @s death_sp 60
scoreboard players set @s sp_need_acc 100
scoreboard players set @s ink_regen 100
scoreboard players set @s main_eff_acc 100
scoreboard players set @s sub_eff_acc 100
scoreboard players set @s charge_acc 0
scoreboard players set @s charge_acc_current 0

scoreboard players set @s pl_comp_buff 0

scoreboard players set @s energy_buff 0

## -------------------
tag @s add gear_unlocked
## -------------------

tag @s add speedtype_shoot
tag @s remove speedtype_move

tag @s remove record_unlocked
tag @s remove spectator_unlocked
tag @s remove auto_ready_unlocked
tag @s remove setting_unlocked
tag @s remove module_unlocked
tag @s remove party_unlocked
tag @s remove preset_unlocked

tag @s remove tmw_237_notitle
tag @s remove tmw_237_nolaser
tag @s remove tmw_237_noboost
tag @s remove tmw_237_noresparticle
tag @s remove tmw_237_nokilllog
tag @s remove tmw_237_nochargelog
tag @s remove tmw_237_nosplog
tag @s remove tmw_237_nomisclog

tag @s remove setting_gear
tag @s remove setting_game
tag @s remove auto_ready
tag @s remove game.ready
tag @s remove setting_module
tag @s remove setting_party

tag @s remove adv35
tag @s remove adv40
tag @s remove adv45
tag @s remove adv50
tag @s remove adv55
tag @s remove adv60
tag @s remove adv65
tag @s remove adv70
tag @s remove adv75
tag @s remove adv80

item replace entity @s enderchest.0 with air

teleport @a -2 30.5 6
spawnpoint @a -2 30 6

#scoreboard players set @a ui_r_game 0
#scoreboard players set @a ui_r_kill 0
#scoreboard players set @a ui_r_death 0
#scoreboard players set @a ui_r_assist 0
#scoreboard players set @a ui_r_paint 0
#scoreboard players set @a ui_r_q 0
#scoreboard players set @a ui_r_f 0
#scoreboard players set @a ui_r_kill_dist 0
#scoreboard players set @a ui_r_kill_streak 0

#プレイヤーidを振る
execute as @s unless entity @s[scores={ui_id=1..}] run function ui:misc/act/make_id