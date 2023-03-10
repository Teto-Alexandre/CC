#これは初回起動時に実行されるコマンドです

tellraw @a ["",{"text":"ColorCrash","color":"white"},{"text":"> ","color":"green"},{"text":"データの読み込みが完了しました","color":"gray"}]

## 限定
    scoreboard objectives add map_id dummy
    scoreboard objectives add map_default_color dummy
    scoreboard objectives add wool_count dummy

## 主な全ての計算に使用
    scoreboard objectives add ui_calc1 dummy {"text":"UtilityItems_Calculation1","color":"dark_blue"}
    scoreboard objectives add ui_calc2 dummy {"text":"UtilityItems_Calculation2","color":"dark_blue"}
    scoreboard objectives add ui_calc3 dummy {"text":"UtilityItems_Calculation3","color":"dark_blue"}
    scoreboard objectives add ui_tc dummy {"text":"UtilityItems_TimeCount","color":"dark_blue"}
    scoreboard objectives add ui_temp dummy {"text":"UtilityItems_TEMP","color":"dark_blue"}
    scoreboard objectives add ui_temp2 dummy {"text":"UtilityItems_TEMP2","color":"dark_blue"}
    #独立は義務です 個々が干渉しないように割り当てるテキトーな数字
    scoreboard objectives add ui_is dummy {"text":"UtilityItems_IndependentScore","color":"dark_blue"}
    scoreboard objectives add ui_is2 dummy {"text":"UtilityItems_IndependentScore2","color":"dark_blue"}

## 特殊武装のスキル発動関連
    scoreboard objectives add ui_tmw_id dummy {"text":"UtilityItems_TetoMysticWeapon_ID","color":"dark_blue"}
    scoreboard objectives add ui_tmw_id2 dummy {"text":"UtilityItems_TetoMysticWeapon_ID_offhand","color":"dark_blue"}
    scoreboard objectives add ui_tmw_id_old dummy {"text":"UtilityItems_TetoMysticWeapon_ID_old","color":"dark_blue"}
    scoreboard objectives add ui_tmw_id_old2 dummy {"text":"UtilityItems_TetoMysticWeapon_ID_old2","color":"dark_blue"}
    scoreboard objectives add ui_slotable dummy {"text":"UtilityItems_Slotable","color":"dark_blue"}
    scoreboard objectives add ui_st minecraft.custom:minecraft.sneak_time {"text":"UtilityItems_SneakTime","color":"dark_blue"}
    scoreboard objectives add ui_st2 dummy {"text":"UtilityItems_SneakTime2","color":"dark_blue"}
    scoreboard objectives add ui_di minecraft.custom:minecraft.drop {"text":"UtilityItems_DropItem","color":"dark_blue"}
    scoreboard objectives add ui_tmw_con_id dummy {"text":"UtilityItems_TetoMysticWeapon_Consume_ID","color":"dark_blue"}
    scoreboard objectives add ui_face_up dummy {"text":"UtilityItems_Face_Up","color":"dark_blue"}
    #未分類だけどとりあえず連射させたくない奴
    scoreboard objectives add ui_ct dummy {"text":"UtilityItems_CoolTime","color":"dark_blue"}

## ランダム用
    scoreboard objectives add ui_rand dummy {"text":"UtilityItems_Rand","color":"dark_blue"}

## 数字ライブラリ
    scoreboard objectives add ui_num dummy {"text":"UtilityItems_Number","color":"dark_blue"}

## 条件起動型
    scoreboard objectives add ui_dc deathCount {"text":"UtilityItems_DeathCount","color":"dark_blue"}
    scoreboard objectives add ui_dc_r dummy {"text":"UtilityItems_DeathCountRespawn","color":"dark_blue"}
    scoreboard objectives add ui_use1 minecraft.used:minecraft.carrot_on_a_stick {"text":"UtilityItems_Use1","color":"dark_blue"}
    scoreboard objectives add ui_use2 dummy {"text":"UtilityItems_Use2","color":"dark_blue"}
    scoreboard objectives add ui_use2_tc dummy {"text":"UtilityItems_Use2_TimeCount","color":"dark_blue"}
    scoreboard objectives add ui_usec2 dummy {"text":"UtilityItems_UseC2","color":"dark_blue"}
    scoreboard objectives add ui_usec2_tc dummy {"text":"UtilityItems_UseC2_TimeCount","color":"dark_blue"}
    scoreboard objectives add ui_move_s minecraft.custom:minecraft.crouch_one_cm {"text":"UtilityItems_MoveSneak","color":"dark_blue"}
    scoreboard objectives add ui_move_d minecraft.custom:minecraft.sprint_one_cm {"text":"UtilityItems_MoveDash","color":"dark_blue"}
    scoreboard objectives add ui_lg minecraft.custom:minecraft.leave_game {"text":"UtilityItems_LeaveGame","color":"dark_blue"}

## プレイヤー区別用id
    scoreboard objectives add ui_id dummy {"text":"UtilityItems_ID","color":"dark_blue"}
    scoreboard objectives add ui_idc dummy {"text":"UtilityItems_IDCalc","color":"dark_blue"}
    scoreboard objectives add ui_team dummy {"text":"UtilityItems_Team","color":"dark_blue"}
    #個別オブジェクト連携id
    scoreboard objectives add ui_obj_id dummy {"text":"UtilityItems_ID","color":"dark_blue"}

## 主に銃系統（リロードと弾薬がある射撃武器）に使用
    scoreboard objectives add ui_bm dummy {"text":"UtilityItems_BulletMove","color":"dark_blue"}
    scoreboard objectives add ui_bm_temp dummy {"text":"UtilityItems_BulletMove_Temp","color":"dark_blue"}
    scoreboard objectives add ui_bm_lim dummy {"text":"UtilityItems_UnderLimit","color":"dark_blue"}
    scoreboard objectives add ui_br dummy {"text":"UtilityItems_BulletRange","color":"dark_blue"}
    scoreboard objectives add ui_br_temp dummy {"text":"UtilityItems_BulletRange_Temp","color":"dark_blue"}
    scoreboard objectives add ui_bg dummy {"text":"UtilityItems_BulletGravity","color":"dark_blue"}
    scoreboard objectives add ui_rt dummy {"text":"UtilityItems_ReloadTime","color":"dark_blue"}
    scoreboard objectives add ui_grs dummy {"text":"UtilityItems_GunReloadSlot","color":"dark_blue"}
    scoreboard objectives add ui_bc dummy {"text":"UtilityItems_BurstCount","color":"dark_blue"}
    #視野効果用
    scoreboard objectives add ui_bc2 dummy {"text":"UtilityItems_BurstCount2","color":"dark_blue"}
    scoreboard objectives add ui_autohit dummy {"text":"UtilityItems_AutoHit","color":"dark_blue"}
    scoreboard objectives add ui_bpart dummy {"text":"UtilityItems_BulletParticle","color":"dark_blue"}
    scoreboard objectives add ui_hpart dummy {"text":"UtilityItems_HitParticle","color":"dark_blue"}
    scoreboard objectives add ui_bmods dummy {"text":"UtilityItems_BulletModifiersCount","color":"dark_blue"}
    scoreboard objectives add ui_hmods dummy {"text":"UtilityItems_HitModifiersCount","color":"dark_blue"}
    scoreboard objectives add ui_kb dummy {"text":"UtilityItems_Knockback","color":"dark_blue"}
    scoreboard objectives add ui_bdt dummy {"text":"UtilityItems_BulletDamageType","color":"dark_blue"}
    scoreboard objectives add ui_dmg dummy {"text":"UtilityItems_DamageMultiple","color":"dark_blue"}
    scoreboard objectives add ui_gct dummy {"text":"UtilityItems_GunCoolTime","color":"dark_blue"}
    scoreboard objectives add ui_gms dummy {"text":"UtilityItems_GunMultiShot","color":"dark_blue"}
    scoreboard objectives add ui_bu dummy {"text":"UtilityItems_BulletUse","color":"dark_blue"}
    scoreboard objectives add ui_bt dummy {"text":"UtilityItems_BulletType","color":"dark_blue"}
    scoreboard objectives add ui_gt dummy {"text":"UtilityItems_GunType","color":"dark_blue"}
    scoreboard objectives add ui_gpc dummy {"text":"UtilityItems_GunPierceCount","color":"dark_blue"}
    scoreboard objectives add ui_bcp dummy {"text":"UtilityItems_BulletCountPassed","color":"dark_blue"}
    #狙撃用
    scoreboard objectives add ui_snipe dummy {"text":"UtilityItems_Snipe","color":"dark_blue"}

## 必殺技カウント
    scoreboard objectives add ui_paint dummy {"text":"UtilityItems_Paint","color":"dark_blue"}
    scoreboard objectives add ui_tmw237_survive dummy {"text":"UtilityItems_Tmw237_Survive","color":"dark_blue"}
    scoreboard objectives add ui_tmw237_boost dummy {"text":"UtilityItems_Tmw237_Boost","color":"dark_blue"}
    scoreboard objectives add ui_tmw237_sprint_particle dummy {"text":"UtilityItems_Tmw237_Sprint_Particle","color":"dark_blue"}
    scoreboard objectives add ui_uses dummy {"text":"UtilityItems_UseS","color":"dark_blue"}

## 復活、ゲームモード関連
    #復活までの時間
        scoreboard objectives add ui_rst dummy {"text":"UtilityItems_RespawnTime","color":"dark_blue"}

## ゲーム内記録レコード
    scoreboard objectives add ui_s_kill minecraft.custom:player_kills
    scoreboard objectives add ui_s_assist dummy
    scoreboard objectives add ui_s_death deathCount
    scoreboard objectives add ui_s_paint dummy
    scoreboard objectives add ui_s_q dummy
    scoreboard objectives add ui_s_f dummy
    scoreboard objectives add ui_s_kill_dist dummy

## レコード
    scoreboard objectives add ui_r_game dummy
    scoreboard objectives add ui_r_kill dummy
    scoreboard objectives add ui_r_assist dummy
    scoreboard objectives add ui_r_death dummy
    scoreboard objectives add ui_r_paint dummy
    scoreboard objectives add ui_r_q dummy
    scoreboard objectives add ui_r_f dummy
    scoreboard objectives add ui_r_kill_dist dummy

## コモン

    ### MOB
    scoreboard objectives add ui_common_mob_target_obj dummy {"text":"UtilityItems_Common_Mob_Target_Obj","color":"dark_blue"}

## 使用関数の設定
    scoreboard players set #type1 ui_rand 1
    scoreboard players set #type2 ui_rand 1
    scoreboard players set #-5 ui_num -5
    scoreboard players set #-1 ui_num -1
    scoreboard players set #0 ui_num 0
    scoreboard players set #1 ui_num 1
    scoreboard players set #2 ui_num 2
    scoreboard players set #3 ui_num 3
    scoreboard players set #4 ui_num 4
    scoreboard players set #5 ui_num 5
    scoreboard players set #6 ui_num 6
    scoreboard players set #7 ui_num 7
    scoreboard players set #8 ui_num 8
    scoreboard players set #9 ui_num 9
    scoreboard players set #10 ui_num 10
    scoreboard players set #11 ui_num 11
    scoreboard players set #12 ui_num 12
    scoreboard players set #13 ui_num 13
    scoreboard players set #14 ui_num 14
    scoreboard players set #15 ui_num 15
    scoreboard players set #16 ui_num 16
    scoreboard players set #17 ui_num 17
    scoreboard players set #18 ui_num 18
    scoreboard players set #19 ui_num 19
    scoreboard players set #20 ui_num 20
    scoreboard players set #24 ui_num 24
    scoreboard players set #25 ui_num 25
    scoreboard players set #30 ui_num 30
    scoreboard players set #36 ui_num 36
    scoreboard players set #40 ui_num 40
    scoreboard players set #50 ui_num 50
    scoreboard players set #60 ui_num 60
    scoreboard players set #81 ui_num 81
    scoreboard players set #85 ui_num 85
    scoreboard players set #90 ui_num 90
    scoreboard players set #95 ui_num 95
    scoreboard players set #98 ui_num 98
    scoreboard players set #99 ui_num 99
    scoreboard players set #100 ui_num 100
    scoreboard players set #180 ui_num 180
    scoreboard players set #200 ui_num 200
    scoreboard players set #250 ui_num 250
    scoreboard players set #300 ui_num 300
    scoreboard players set #325 ui_num 325
    scoreboard players set #360 ui_num 360
    scoreboard players set #392 ui_num 392
    scoreboard players set #490 ui_num 490
    scoreboard players set #500 ui_num 500
    scoreboard players set #1000 ui_num 1000
    scoreboard players set #2000 ui_num 2000
    scoreboard players set #2220 ui_num 2220
    scoreboard players set #3000 ui_num 3000
    scoreboard players set #3600 ui_num 3600
    scoreboard players set #10000 ui_num 10000
    scoreboard players set #20000 ui_num 20000
    scoreboard players set #31743 ui_num 31743
    scoreboard players set #32767 ui_num 32767
    scoreboard players set #65536 ui_num 65536
    scoreboard players set #100000 ui_num 100000
    scoreboard players set #1000000 ui_num 1000000
    scoreboard players set #1800000 ui_num 1800000
    scoreboard players set #10000000 ui_num 10000000
    
    scoreboard players set $mod ui_calc1 1000
    scoreboard players set $gun.react ui_world 1
    scoreboard players set $tmw.activation ui_world 1
    execute unless score $base ui_id matches -2147483648..2147483647 run scoreboard players set $base ui_id 17
    execute unless score $base ui_obj_id matches -2147483648..2147483647 run scoreboard players set $base ui_obj_id 1
    execute unless score $base ui_i_id matches -2147483648..2147483647 run scoreboard players set $base ui_i_id 1

## ボスバー
    bossbar add ui:tmw237 {"text":"残り時間","color":"white","italic":false,"bold":true}
    bossbar set ui:tmw237 color white
    bossbar set ui:tmw237 max 3000

## チーム
    team add blue
    team modify blue color aqua
    team modify blue friendlyFire false
    team modify blue collisionRule always
    team modify blue nametagVisibility hideForOtherTeams
    team modify blue seeFriendlyInvisibles false
    team add red
    team modify red color light_purple
    team modify red friendlyFire false
    team modify red collisionRule always
    team modify red nametagVisibility hideForOtherTeams
    team modify red seeFriendlyInvisibles false
    team add yellow
    team modify yellow color yellow
    team modify yellow friendlyFire false
    team modify yellow collisionRule always
    team modify yellow nametagVisibility hideForOtherTeams
    team modify yellow seeFriendlyInvisibles false
    team add green
    team modify green color green
    team modify green friendlyFire false
    team modify green collisionRule always
    team modify green nametagVisibility hideForOtherTeams
    team modify green seeFriendlyInvisibles false

## その他
    forceload add 0 0
    setblock 0 0 0 air replace
    setblock 0 1 0 air replace
    setblock 0 0 0 minecraft:dropper{Items:[{Slot:0b,id:"minecraft:stone",Count:1b},{Slot:1b,id:"minecraft:stone",Count:1b},{Slot:2b,id:"minecraft:stone",Count:1b},{Slot:3b,id:"minecraft:stone",Count:1b},{Slot:4b,id:"minecraft:stone",Count:1b},{Slot:5b,id:"minecraft:stone",Count:1b},{Slot:6b,id:"minecraft:stone",Count:1b},{Slot:7b,id:"minecraft:stone",Count:1b},{Slot:8b,id:"minecraft:stone",Count:1b}]} replace
    setblock 0 1 0 minecraft:oak_sign replace

#=====================================================================================
#
#       ・最終実行
#
#=====================================================================================

    scoreboard players set $version ui_world 52
