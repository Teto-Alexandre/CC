# その場系ウェポン発動

# リコール
    #execute if score $activator ui_temp matches 201 run function ui:tmw/237/activator/here/201
    execute if score $activator ui_temp matches 201 run tellraw @s [{"text":"このサブは理由あって現在使用できません","color":"red"}]

# ハイジャンプ
    execute if score $activator ui_temp matches 202 run playsound entity.ender_dragon.flap player @a ~ ~ ~ 1 1 0
    execute if score $activator ui_temp matches 202 run playsound entity.firework_rocket.launch player @a ~ ~ ~ 1 1.5 0
    execute if score $activator ui_temp matches 202 run tp @s @s
    execute if score $activator ui_temp matches 202 run scoreboard players set @s ui_tmw237_air_ink_lock 4
    execute if score $activator ui_temp matches 202 run data modify storage ui:temp Effect set value [{id:"levitation",duration:20,amplifier:29b}]
    execute if score $activator ui_temp matches 202 run function ui:tmw/237/misc/giveeffect/

# スライド
    execute if score $activator ui_temp matches 203 run playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.5 0
    execute if score $activator ui_temp matches 203 run playsound entity.wither.shoot player @a ~ ~ ~ 1 2 0
    execute if score $activator ui_temp matches 203 run particle angry_villager ~ ~ ~ 0.5 0.5 0.5 0 10 force
    execute if score $activator ui_temp matches 203 run particle sweep_attack ~ ~0.2 ~ 0.3 0 0.3 0 5 force
    execute if score $activator ui_temp matches 203 run particle cloud ~ ~0.2 ~ 0 0 0 0.1 10 force

# サーキュレーター
    execute if score $activator ui_temp matches 204 run playsound entity.zombie_villager.converted player @a ~ ~ ~ 1 2 0
    execute if score $activator ui_temp matches 204 run playsound block.respawn_anchor.charge player @a ~ ~ ~ 0.8 1.5 0
    execute if score $activator ui_temp matches 204 run particle firework ~ ~ ~ 0.5 0.5 0.5 0 10 force
    execute if score $activator ui_temp matches 204 run scoreboard players operation $temp ui_temp = $ink ui_temp
    execute if score $activator ui_temp matches 204 run scoreboard players operation $temp ui_temp /= #2 ui_num
    execute if score $activator ui_temp matches 204 run scoreboard players operation $ink ui_temp -= $temp ui_temp
    execute if score $activator ui_temp matches 204 run scoreboard players operation @s ui_tmw237_ink_regen += $temp ui_temp
    execute if score $activator ui_temp matches 204 run scoreboard players operation @s ui_tmw237_ink_regen < #1000 ui_num

# スピードカバー
    execute if score $activator ui_temp matches 205 run playsound entity.wither.shoot player @a ~ ~ ~ 1 1 0
    execute if score $activator ui_temp matches 205 run playsound block.anvil.use player @a ~ ~ ~ 1 1.2 0
    execute if score $activator ui_temp matches 205 run playsound block.lever.click player @a ~ ~ ~ 2 1.2 0
    execute if score $activator ui_temp matches 205 run particle crit ~ ~-1 ~ 0.5 0.5 0.5 1 20 force
    execute if score $activator ui_temp matches 205 run particle sweep_attack ~ ~-1 ~ 0.8 0.05 0.8 0 6 force
    execute if score $activator ui_temp matches 205 run scoreboard players set @s ui_tmw237_speedcover 160
    execute if score $activator ui_temp matches 205 if score $module ui_world matches 1 run scoreboard players set @s[scores={module=40}] ui_tmw237_speedcover 300

# 新ラインマーカー
    execute if score $activator ui_temp matches 206 at @s anchored eyes positioned ^ ^ ^ run function ui:tmw/237/activator/here/206

# ノヴァ
    execute if score $activator ui_temp matches 251 run playsound entity.wither.death player @a ~ ~ ~ 1 0.8 0
    execute if score $activator ui_temp matches 251 run particle explosion_emitter ~ ~ ~ 5 5 5 0 20 force
    execute if score $activator ui_temp matches 251 run data modify storage ui:temp Effect set value [{id:"instant_health",duration:20,amplifier:8b,show_particles:0b},{id:"resistance",duration:20,amplifier:126b,show_particles:0b}]
    execute if score $activator ui_temp matches 251 run function ui:tmw/237/misc/giveeffect/

# スーパースター
    execute if score $activator ui_temp matches 252 run playsound entity.experience_orb.pickup player @a ~ ~ ~ 3 0.5 0
    execute if score $activator ui_temp matches 252 run particle totem_of_undying ~ ~ ~ 5 5 5 0.02 20 force
    execute if score $activator ui_temp matches 252 run data modify storage ui:temp Effect set value [{id:"glowing",duration:120,amplifier:0b},{id:"resistance",duration:120,amplifier:126b}]
    execute if score $activator ui_temp matches 252 run function ui:tmw/237/misc/giveeffect/

# サブラッシュ
    execute if score $activator ui_temp matches 253 run playsound block.beacon.power_select player @a ~ ~ ~ 3 1.8 0

# インクリメント
    execute if score $activator ui_temp matches 254 run data modify storage ui:temp Effect set value [{id:"health_boost",duration:160,amplifier:1b,show_particles:0b},{id:"resistance",duration:160,amplifier:0b}]
    execute if score $activator ui_temp matches 254 run function ui:tmw/237/misc/giveeffect/
    execute if score $activator ui_temp matches 254 run playsound block.beacon.activate player @a ~ ~ ~ 3 1.4 0

# レーダー
    execute if score $activator ui_temp matches 255 run scoreboard players operation $team ui_temp = @s ui_team
    execute if score $activator ui_temp matches 255 run data modify storage ui:temp Effect set value [{id:"glowing",duration:200,amplifier:0b},{id:"fire_resistance",duration:200,amplifier:0b}]
    execute if score $activator ui_temp matches 255 as @a unless score $team ui_temp = @s ui_team run function ui:tmw/237/misc/giveeffect/
    execute if score $activator ui_temp matches 255 run data modify storage ui:temp Effect set value [{id:"fire_resistance",duration:200,amplifier:0b}]
    execute if score $activator ui_temp matches 255 as @e[tag=entity.hitbox] unless score $team ui_temp = @s ui_team run function ui:tmw/237/misc/giveeffect/
    execute if score $activator ui_temp matches 255 as @e[tag=entity.hitbox] unless score $team ui_temp = @s ui_team at @s run particle firework ~ ~ ~ 1 1 1 0.05 50 force
    execute if score $activator ui_temp matches 255 as @e[tag=entity.hitbox] unless score $team ui_temp = @s ui_team at @s run particle end_rod ~ ~ ~ 2 2 2 0.01 50 force
    execute if score $activator ui_temp matches 255 as @a unless score $team ui_temp = @s ui_team run scoreboard players operation @s tds_recent_attacked_by = $id ui_temp
    execute if score $activator ui_temp matches 255 run playsound block.beacon.deactivate player @a ~ ~ ~ 3 1.4 0

# チャクチ
    execute if score $activator ui_temp matches 256 run playsound entity.ender_dragon.flap player @a ~ ~ ~ 1 0.8 0
    execute if score $activator ui_temp matches 256 run playsound entity.ender_dragon.flap player @a ~ ~ ~ 1 1 0
    execute if score $activator ui_temp matches 256 run playsound entity.firework_rocket.launch player @a ~ ~ ~ 1 0.6 0
    execute if score $activator ui_temp matches 256 run tp @s @s
    execute if score $activator ui_temp matches 256 run data modify storage ui:temp Effect set value [{id:"levitation",duration:20,amplifier:29b}]
    execute if score $activator ui_temp matches 256 run function ui:tmw/237/misc/giveeffect/

# トーテム
    execute if score $activator ui_temp matches 257 run function ui:tmw/237/misc/temp_team
    execute if score $activator ui_temp matches 257 store result score $count ui_temp run scoreboard players set @a[tag=ui_temp_team] ui_tmw237_survive 200
    execute if score $activator ui_temp matches 257 if score $module ui_world matches 1 store result score $count ui_temp run scoreboard players set @a[tag=ui_temp_team,scores={module=40}] ui_tmw237_survive 300
    execute if score $activator ui_temp matches 257 at @a[tag=ui_temp_team] run playsound entity.evoker.cast_spell player @a ~ ~ ~ 1 0.8 0
    execute if score $activator ui_temp matches 257 at @a[tag=ui_temp_team] run particle totem_of_undying ~ ~1 ~ 0.4 0.6 0.4 0.2 10 force
    execute if score $activator ui_temp matches 257 run tag @e[tag=ui_temp_team] remove ui_temp_team

# アウェイクパワー
    execute if score $activator ui_temp matches 259 run playsound item.goat_horn.sound.2 player @a ~ ~ ~ 2 1 0
    execute if score $activator ui_temp matches 259 run particle firework ~ ~ ~ 5 5 5 0.02 20 force
    execute if score $activator ui_temp matches 259 run particle lava ~ ~ ~ 5 5 5 0.02 20 force
    execute if score $activator ui_temp matches 259 run data modify storage ui:temp Effect set value [{id:"instant_health",duration:20,amplifier:1b},{id:"resistance",duration:160,amplifier:2b},{id:"luck",duration:160,amplifier:0b,show_particles:0b}]
    execute if score $activator ui_temp matches 259 run function ui:tmw/237/misc/giveeffect/