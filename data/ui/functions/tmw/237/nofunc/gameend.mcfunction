# キル数と塗り数の表示

#
execute as @a run scoreboard players add @s ui_r_game 1
execute as @a run scoreboard players operation @s ui_r_kill += @s ui_s_kill
execute as @a run scoreboard players operation @s ui_r_death += @s ui_s_death
execute as @a run scoreboard players operation @s ui_r_assist += @s ui_s_assist
execute as @a run scoreboard players operation @s ui_r_paint += @s ui_s_paint
execute as @a run scoreboard players operation @s ui_r_q += @s ui_s_q
execute as @a run scoreboard players operation @s ui_r_f += @s ui_s_f
execute as @a run scoreboard players operation @s ui_r_kill_dist > @s ui_s_kill_dist

#
execute as @a run tellraw @a ["",{"text":"<","color": "gray"},{"selector":"@s"},{"text":">","color":"gray"},{"text":" Paint"},{"text":":","color": "gray"},{"score":{"name": "@s","objective": "ui_s_paint"},"color":"gold"},{"text":", Kill"},{"text":":","color": "gray"},{"score":{"name": "@s","objective": "ui_s_kill"},"color":"gold"},{"text":", Assist"},{"text":":","color": "gray"},{"score":{"name": "@s","objective": "ui_s_assist"},"color":"gold"},{"text":", Sub"},{"text":":","color": "gray"},{"score":{"name": "@s","objective": "ui_s_q"},"color":"gold"},{"text":", SP"},{"text":":","color": "gray"},{"score":{"name": "@s","objective": "ui_s_f"},"color":"gold"}]

#
schedule function ui:tmw/237/nofunc/gameend2 1t append
