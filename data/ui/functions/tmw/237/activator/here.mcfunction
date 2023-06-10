# その場系ウェポン発動

# リコール
    execute if score $activator ui_temp matches 201 run function ui:tmw/237/activator/here/201

# ハイジャンプ
    execute if score $activator ui_temp matches 202 run playsound entity.ender_dragon.flap player @a ~ ~ ~ 1 1 0
    execute if score $activator ui_temp matches 202 run playsound entity.firework_rocket.launch player @a ~ ~ ~ 1 1.5 0
    execute if score $activator ui_temp matches 202 run tp @s @s
    execute if score $activator ui_temp matches 202 run effect give @s levitation 1 29 false

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

# ノヴァ
    execute if score $activator ui_temp matches 251 run playsound entity.wither.death player @a ~ ~ ~ 1 0.8 0
    execute if score $activator ui_temp matches 251 run particle explosion_emitter ~ ~ ~ 5 5 5 0 20 force
    execute if score $activator ui_temp matches 251 run effect give @s instant_health 1 8 true
    execute if score $activator ui_temp matches 251 run effect give @s resistance 1 126 true

# スーパースター
    execute if score $activator ui_temp matches 252 run playsound entity.experience_orb.pickup player @a ~ ~ ~ 3 0.5 0
    execute if score $activator ui_temp matches 252 run particle totem_of_undying ~ ~ ~ 5 5 5 0.02 20 force
    execute if score $activator ui_temp matches 252 run effect give @s resistance 6 126 false
    execute if score $activator ui_temp matches 252 run effect give @s glowing 6 0 false

# サブラッシュ
    execute if score $activator ui_temp matches 253 run playsound block.beacon.power_select player @a ~ ~ ~ 3 1.8 0

# インクリメント
    execute if score $activator ui_temp matches 254 run effect give @s health_boost 8 1 true
    execute if score $activator ui_temp matches 254 run effect give @s resistance 8 0 false
    execute if score $activator ui_temp matches 254 run playsound block.beacon.activate player @a ~ ~ ~ 3 1.4 0

# レーダー
    execute if score $activator ui_temp matches 255 run scoreboard players operation $team ui_temp = @s ui_team
    execute if score $activator ui_temp matches 255 as @a[tag=!module19] unless score $team ui_temp = @s ui_team run effect give @s glowing 10 0 false
    execute if score $activator ui_temp matches 255 as @a[tag=module19] unless score $team ui_temp = @s ui_team run effect give @s glowing 5 0 false
    execute if score $activator ui_temp matches 255 as @a[tag=!module19] unless score $team ui_temp = @s ui_team run effect give @s fire_resistance 10 0 false
    execute if score $activator ui_temp matches 255 as @a[tag=module19] unless score $team ui_temp = @s ui_team run effect give @s fire_resistance 5 0 false
    execute if score $activator ui_temp matches 255 as @e[tag=entity.hitbox] unless score $team ui_temp = @s ui_team run effect give @s fire_resistance 10 0 false
    execute if score $activator ui_temp matches 255 as @e[tag=entity.hitbox] unless score $team ui_temp = @s ui_team at @s run particle firework ~ ~ ~ 1 1 1 0.05 50 force
    execute if score $activator ui_temp matches 255 as @e[tag=entity.hitbox] unless score $team ui_temp = @s ui_team at @s run particle end_rod ~ ~ ~ 2 2 2 0.01 50 force
    execute if score $activator ui_temp matches 255 as @a unless score $team ui_temp = @s ui_team run scoreboard players operation @s tds_recent_attacked_by = $id ui_temp
    execute if score $activator ui_temp matches 255 run playsound block.beacon.deactivate player @a ~ ~ ~ 3 1.4 0

# チャクチ
    execute if score $activator ui_temp matches 256 run playsound entity.ender_dragon.flap player @a ~ ~ ~ 1 0.8 0
    execute if score $activator ui_temp matches 256 run playsound entity.ender_dragon.flap player @a ~ ~ ~ 1 1 0
    execute if score $activator ui_temp matches 256 run playsound entity.firework_rocket.launch player @a ~ ~ ~ 1 0.6 0
    execute if score $activator ui_temp matches 256 run tp @s @s
    execute if score $activator ui_temp matches 256 run effect give @s levitation 1 29 false

# トーテム
    execute if score $activator ui_temp matches 257 run function ui:tmw/237/misc/temp_team
    execute if score $activator ui_temp matches 257 store result score $count ui_temp run scoreboard players set @a[tag=ui_temp_team] ui_tmw237_survive 200
    execute if score $activator ui_temp matches 257 at @a[tag=ui_temp_team] run playsound entity.evoker.cast_spell player @a ~ ~ ~ 1 0.8 0
    execute if score $activator ui_temp matches 257 at @a[tag=ui_temp_team] run particle totem_of_undying ~ ~1 ~ 0.4 0.6 0.4 0.2 10 force
    execute if score $activator ui_temp matches 257 run tag @e[tag=ui_temp_team] remove ui_temp_team

# スーパースター
    execute if score $activator ui_temp matches 259 run playsound item.goat_horn.sound.2 player @a ~ ~ ~ 2 1 0
    execute if score $activator ui_temp matches 259 run particle firework ~ ~ ~ 5 5 5 0.02 20 force
    execute if score $activator ui_temp matches 259 run particle lava ~ ~ ~ 5 5 5 0.02 20 force
    execute if score $activator ui_temp matches 259 run effect give @s instant_health 1 1 false
    execute if score $activator ui_temp matches 259 run effect give @s resistance 8 2 false
    execute if score $activator ui_temp matches 259 run effect give @s luck 8 0 true
