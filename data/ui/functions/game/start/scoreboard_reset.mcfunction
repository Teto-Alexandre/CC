## リセット
    scoreboard objectives remove ui_s_kill
    scoreboard objectives remove ui_s_assist
    scoreboard objectives remove ui_s_death
    scoreboard objectives remove ui_s_paint
    scoreboard objectives remove ui_s_q
    scoreboard objectives remove ui_s_f
    scoreboard objectives remove ui_s_kill_dist
    scoreboard objectives remove ui_s_kill_streak
    scoreboard objectives remove ui_s_kill_time

## ゲーム内記録レコード
    scoreboard objectives add ui_s_kill dummy
    scoreboard objectives add ui_s_assist dummy
    scoreboard objectives add ui_s_death deathCount
    scoreboard objectives add ui_s_paint dummy
    scoreboard objectives add ui_s_q dummy
    scoreboard objectives add ui_s_f dummy
    scoreboard objectives add ui_s_kill_dist dummy
    scoreboard objectives add ui_s_kill_streak dummy
    # システム用
    scoreboard objectives add ui_s_kill_time dummy

## 初期値設定
    scoreboard players set @a ui_s_kill 0
    scoreboard players set @a ui_s_death 0
    scoreboard players set @a ui_s_assist 0
    scoreboard players set @a ui_s_paint 0
    scoreboard players set @a ui_s_q 0
    scoreboard players set @a ui_s_f 0
    scoreboard players set @a ui_s_kill_dist 0
    scoreboard players set @a ui_s_kill_streak 0
