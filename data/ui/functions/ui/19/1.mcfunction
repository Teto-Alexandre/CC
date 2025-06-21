# idリンク形成
    scoreboard players operation $id ui_temp = @s ui_id
    execute as @e[tag=ui_19_2] if score @s ui_id = $id ui_temp run tag @s add ui_19_2_they
    execute as @e[tag=ui_19_3] if score @s ui_id = $id ui_temp run tag @s add ui_19_3_they
    execute as @e[tag=ui_19_4] if score @s ui_id = $id ui_temp run tag @s add ui_19_4_they

# 上のプレイヤーカウント
    scoreboard players set $temp ui_temp 0
    execute positioned ~-2 ~ ~-2 if entity @e[type=player,gamemode=!spectator,dx=3,dy=1,dz=3,scores={ui_team=1}] run scoreboard players add $temp ui_temp 1
    execute positioned ~-2 ~ ~-2 if entity @e[type=player,gamemode=!spectator,dx=3,dy=1,dz=3,scores={ui_team=3}] run scoreboard players remove $temp ui_temp 1
    execute if score $temp ui_temp matches 1 if score @s ui_asiba_team matches ..0 run playsound block.note_block.snare block @a ~ ~ ~ 1 0.5 1
    execute if score $temp ui_temp matches 1 if score @s ui_asiba_team matches ..0 run tellraw @a [{"text":"青チームがアシバを確保！","color": "aqua"}]
    execute if score $temp ui_temp matches 1 if score @s ui_asiba_team matches ..0 run team join blue @s
    execute if score $temp ui_temp matches 1 run scoreboard players set @s ui_asiba_team 1
    execute if score $temp ui_temp matches -1 if score @s ui_asiba_team matches 0.. run playsound block.note_block.snare block @a ~ ~ ~ 1 1 1
    execute if score $temp ui_temp matches -1 if score @s ui_asiba_team matches 0.. run tellraw @a [{"text":"黄チームがアシバを確保！","color": "yellow"}]
    execute if score $temp ui_temp matches -1 if score @s ui_asiba_team matches 0.. run team join yellow @s
    execute if score $temp ui_temp matches -1 run scoreboard players set @s ui_asiba_team -1

    scoreboard players operation $temp ui_temp = @s ui_asiba_team
    #execute if score $temp ui_temp matches 1 as @e[tag=ui_19_3_they] run data merge entity @s {Color:3}
    #execute if score $temp ui_temp matches 0 as @e[tag=ui_19_3_they] run data merge entity @s {Color:0}
    #execute if score $temp ui_temp matches -1 as @e[tag=ui_19_3_they] run data merge entity @s {Color:4}

# レーン敷設
    execute if entity @e[tag=ui_19_4_they,tag=!ui_19_4_mid,distance=..0.1] run function ui:ui/19/1_root.del
    execute unless entity @e[tag=ui_19_4_they] run function ui:ui/19/1_root
    #execute if score $temp ui_temp matches 1 facing entity @e[tag=ui_19_4_they,tag=ui_19_4_aqua] feet positioned ~-1.5 ~2.9 ~-1.5 as @a[dx=2,dy=1,dz=2] positioned as @s run teleport @s ^ ^ ^0.1
    #execute if score $temp ui_temp matches -1 facing entity @e[tag=ui_19_4_they,tag=ui_19_4_yellow] feet positioned ~-1.5 ~2.9 ~-1.5 as @a[dx=2,dy=1,dz=2] positioned as @s run teleport @s ^ ^ ^0.1
    #execute if score $temp ui_temp matches 1 facing entity @e[tag=ui_19_4_they,tag=ui_19_4_aqua] feet positioned ~-1.5 ~2.9 ~-1.5 as @e[tag=tmw_237_sub,tag=tmw_237_sub_unmovable,dx=2,dy=1,dz=2,scores={ui_uses=2..}] positioned as @s run teleport @s ^ ^ ^0.1
    #execute if score $temp ui_temp matches -1 facing entity @e[tag=ui_19_4_they,tag=ui_19_4_yellow] feet positioned ~-1.5 ~2.9 ~-1.5 as @e[tag=tmw_237_sub,tag=tmw_237_sub_unmovable,dx=2,dy=1,dz=2,scores={ui_uses=2..}] positioned as @s run teleport @s ^ ^ ^0.1
    execute if score $temp ui_temp matches 1 facing entity @e[tag=ui_19_4_they,tag=ui_19_4_aqua] feet run teleport @s ^ ^ ^0.1
    execute at @s if score $temp ui_temp matches 1 facing entity @e[tag=ui_19_4_they,tag=ui_19_4_aqua] feet if score $ashiba_progress_now ui_temp < $ashiba_progress_aqua ui_temp run teleport @s ^ ^ ^0.1
    execute if score $temp ui_temp matches -1 facing entity @e[tag=ui_19_4_they,tag=ui_19_4_yellow] feet run teleport @s ^ ^ ^0.1
    execute at @s if score $temp ui_temp matches -1 facing entity @e[tag=ui_19_4_they,tag=ui_19_4_yellow] feet if score $ashiba_progress_now ui_temp > $ashiba_progress_yellow ui_temp run teleport @s ^ ^ ^0.1
    execute if score $temp ui_temp matches 1 unless entity @e[tag=ui_19_4_they,tag=ui_19_4_aqua] run function ui:ui/19/4_aqua
    execute if score $temp ui_temp matches -1 unless entity @e[tag=ui_19_4_they,tag=ui_19_4_yellow] run function ui:ui/19/4_yellow

## 上のプレイヤー移動
#    execute if block ~ ~-1 ~ light_blue_concrete positioned ~-1.5 ~2.9 ~-1.5 as @a[dx=2,dy=1,dz=2] at @s run teleport @s ~0.1 ~ ~
#    execute if block ~ ~-1 ~ pink_concrete positioned ~-1.5 ~2.9 ~-1.5 as @a[dx=2,dy=1,dz=2] at @s run teleport @s ~-0.1 ~ ~

# シュルカーで描画
    execute if score $temp ui_temp matches 1 at @s run function ui:ui/19/particle_aqua
    execute if score $temp ui_temp matches 0 at @s run function ui:ui/19/particle_white
    execute if score $temp ui_temp matches -1 at @s run function ui:ui/19/particle_yellow

# ボスバーの編集
scoreboard players set $ashiba_progress_display ui_temp 0
scoreboard players operation $ashiba_progress_display ui_temp = $ashiba_progress_now ui_temp
execute if score $ashiba_progress_display ui_temp matches ..-1 run scoreboard players operation $ashiba_progress_display ui_temp *= #-1 ui_num
scoreboard players set $ashiba_progress_display_yellow ui_temp 0
scoreboard players operation $ashiba_progress_display_yellow ui_temp = $ashiba_progress_yellow ui_temp
scoreboard players operation $ashiba_progress_display_yellow ui_temp *= #-1 ui_num
#scoreboard players operation $area_progress_boost_display1 ui_temp /= #1000 ui_num
#scoreboard players operation $area_progress_boost_display2 ui_temp = $area_progress_boost ui_temp
#scoreboard players operation $area_progress_boost_display2 ui_temp /= #100 ui_num
#scoreboard players operation $area_progress_boost_display2 ui_temp %= #10 ui_num
#execute if score $area_progress ui_temp matches ..99999 run scoreboard players operation $area_progress_display ui_temp -= $area_progress ui_temp
#execute if score $area_progress ui_temp matches ..99999 store result bossbar ui:area value run scoreboard players add $area_progress_display ui_temp 100000
#execute if score $area_progress ui_temp matches ..99999 run scoreboard players operation $area_progress_display ui_temp /= #1000 ui_num
#execute if score $area_progress ui_temp matches 100000 run bossbar set ui:area value 0
#execute if score $area_progress ui_temp matches 100001.. run scoreboard players operation $area_progress_display ui_temp = $area_progress ui_temp
#execute if score $area_progress ui_temp matches 100001.. store result bossbar ui:area value run scoreboard players remove $area_progress_display ui_temp 100000
#execute if score $area_progress ui_temp matches 100001.. run scoreboard players operation $area_progress_display ui_temp /= #1000 ui_num
execute if score $temp ui_temp matches 1 run bossbar set ui:area color blue
execute if score $temp ui_temp matches 0 run bossbar set ui:area color white
execute if score $temp ui_temp matches -1 run bossbar set ui:area color yellow

# 名前編集
execute if score $ashiba_progress_now ui_temp matches ..-1 run bossbar set ui:area name [{"text": "進行:[","color": "white","bold": true},{"score":{"name": "$ashiba_progress_aqua","objective": "ui_temp"},"color": "aqua"},{"text": "-","color": "white","bold": true},{"score":{"name": "$ashiba_progress_display_yellow","objective": "ui_temp"},"color": "yellow"},{"text": "] ","color": "white","bold": true},{"text": "現在地: ","color": "white","bold": true},{"score":{"name": "$ashiba_progress_display","objective": "ui_temp"},"color": "yellow","bold": true}]
execute if score $ashiba_progress_now ui_temp matches 0 run bossbar set ui:area name [{"text": "進行:[","color": "white","bold": true},{"score":{"name": "$ashiba_progress_aqua","objective": "ui_temp"},"color": "aqua"},{"text": "-","color": "white","bold": true},{"score":{"name": "$ashiba_progress_display_yellow","objective": "ui_temp"},"color": "yellow"},{"text": "] ","color": "white","bold": true},{"text": "現在地: ","color": "white","bold": true},{"score":{"name": "$ashiba_progress_display","objective": "ui_temp"},"color": "white","bold": true}]
execute if score $ashiba_progress_now ui_temp matches 1.. run bossbar set ui:area name [{"text": "進行:[","color": "white","bold": true},{"score":{"name": "$ashiba_progress_aqua","objective": "ui_temp"},"color": "aqua"},{"text": "-","color": "white","bold": true},{"score":{"name": "$ashiba_progress_display_yellow","objective": "ui_temp"},"color": "yellow"},{"text": "] ","color": "white","bold": true},{"text": "現在地: ","color": "white","bold": true},{"score":{"name": "$ashiba_progress_display","objective": "ui_temp"},"color": "aqua","bold": true}]

# タグ消し
    tag @e[tag=ui_19_2_they] remove ui_19_2_they
    tag @e[tag=ui_19_3_they] remove ui_19_3_they
    tag @e[tag=ui_19_4_they] remove ui_19_4_they