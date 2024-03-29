# データ検出
execute store result score $amp ui_temp run data get entity @s SelectedItem.tag.tmw.gun.now.Amp
execute if entity @s[tag=tmw_237_king] run scoreboard players set $amp ui_temp -1

# 死亡したならリスポーンタイムが5秒になる -tmw_237_sub_mult-
scoreboard players operation @s ui_rst = $respawntime ui_world
scoreboard players operation @s ui_rst *= #100 ui_num
scoreboard players operation @s ui_rst /= @s respawn_acc
execute if score $module ui_world matches 1 if score @s module matches 15 run scoreboard players operation @s ui_rst /= #2 ui_num
execute if score $module ui_world matches 1 if score @s module matches 39 run scoreboard players operation $add ui_rst = @s ui_tmw237_energy_charge_count
execute if score $module ui_world matches 1 if score @s module matches 39 run scoreboard players operation $add ui_rst *= #20 ui_num
execute if score $module ui_world matches 1 if score @s module matches 39 run scoreboard players operation @s ui_rst += $add ui_rst
execute if score $module ui_world matches 1 if score @s module matches 39 run scoreboard players reset $add ui_rst
execute if score $module ui_world matches 1 if score @s module matches 39 run scoreboard players operation @s ui_tmw237_energy_charge_penalty = @s ui_tmw237_energy_charge_count
execute if score $module ui_world matches 1 if score @s module matches 39 run scoreboard players operation @s ui_tmw237_energy_charge_penalty *= #30 ui_num
scoreboard players operation @s ui_rst > #2 ui_num
    #誰も死んでなかったら乱数をリロール
    scoreboard players set $mod ui_calc1 23
    function ui:common/rand
    scoreboard players operation #tmw237_txt ui_rst = $rand ui_calc1
scoreboard players add $tmw237 ui_rst 1
tag @s add tmw_237_respawning

# 残基確認
execute if score $phase game_state matches 1.. if score $life ui_world matches 0.. if score @s life matches ..0 run scoreboard players set @s ui_rst 2147483647
execute if score $phase game_state matches 1.. if score $life ui_world matches 0.. if score @s life matches ..0 run say @sの残基がなくなりました
execute if score $phase game_state matches 1.. if score $life ui_world matches 0.. if score @s life matches 0.. run scoreboard players remove @s life 1
execute if score $phase game_state matches 1.. if score $life ui_world matches 0.. if score @s life matches 0.. run tellraw @a ["",{"selector":"@s"},{"text":"の残基は"},{"score":{"name": "@s","objective": "life"},"color": "gold"},{"text":"です"}]

# 変数リセット
scoreboard players reset @s ui_tmw237_boost
scoreboard players reset @s ui_tmw237_survive
scoreboard players reset @s ui_tmw237_drained_damage
scoreboard players reset @s ui_tmw237_ink_regen
execute if score @s ui_tmw237_energy_charge_time matches 1.. run scoreboard players set @s ui_tmw237_energy_charge_time 1

# サブ消滅
#scoreboard players set $success ui_temp 0
#scoreboard players operation $id ui_temp = @s ui_id
#execute as @e[tag=tmw_237_sub_mult] if score @s ui_id = $id ui_temp store success score $success ui_temp run kill @s
#execute if score $success ui_temp matches 1.. run tellraw @s ["",{"text":"system","color":"white"},{"text":"> ","color":"green"},{"text":"設置した装置が消滅しました","color":"gray"}]

# amp分岐
#execute unless score $amp ui_temp matches 0 run function ui:misc/dead/tmw237/amp/master

# キング
execute if entity @s[tag=king] run function ui:misc/dead/tmw237/amp/-1

# ss
schedule function ui:misc/dead/tmw237/ss 1t append