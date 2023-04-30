# tickの最初にやること
    function ui:misc/first

# スキル用操作検知システム

    ## 各操作の検知
        execute as @a[scores={ui_use1=1..}] run function ui:misc/act/use
        execute as @a[scores={ui_di=1..},tag=!tmw_mh_calc,nbt=!{SelectedItem:{}}] at @s run function ui:misc/act/drop
        execute as @a[tag=tmw_oh_calc,nbt={Inventory:[{Slot:-106b}]},nbt=!{SelectedItem:{}}] run function ui:misc/act/offhand

    ## 所持アイテムid確認+装填確認
        execute as @a store result score @s ui_tmw_id run data get entity @s SelectedItem.tag.tmw.id

#
    execute as @a run scoreboard players operation @s last_slot_old = @s last_slot
    execute as @a store result score @s last_slot run data get entity @s SelectedItemSlot
    scoreboard players add @a last_slot 1

# メインアクションはすべてここに置く

    ## 誰か一人でも持ってる人がいないなら起動すらしない
        scoreboard players set $tmw.act ui_world 0
        execute if entity @a[scores={ui_tmw_id=1..}] run scoreboard players set $tmw.act ui_world 1
        execute if score $tmw.act ui_world matches 1 if score $tmw.activation ui_world matches 1 run function ui:tmw/root

    ## スポーンエッグ型アイテムと付随性能
        execute if entity @e[type=bat,nbt={NoAI:1b}] run function ui:misc/egg_root
    
    ## コモンイベント
        execute as @e[tag=ui_proj_common] at @s run function ui:common/projectile/tick
        execute as @e[tag=ui_c_ref] at @s run function ui:tmw/214/refmain

    ## 死んだことを検知
        ### 死んだ直後に実行するコマンド群
            execute as @a[scores={ui_dc=1..}] run function ui:misc/dead
        ### リスポーン直後に実行するコマンド群
            execute as @e[type=player,scores={ui_dc_r=1..}] run function ui:misc/respawned
    
    ##
        scoreboard players set @a ui_tmw237_ready 0
        scoreboard players set @a[tag=game.ready] ui_tmw237_ready 1
        scoreboard players set @a[tag=game.ready,tag=auto_ready] ui_tmw237_ready 2
    
# モジュール適応時
    execute if score $module ui_world matches 1 if entity @a[scores={module=5}] run function ui:module/rainbow
    execute if score $module ui_world matches 1 as @a if score @s module matches 10 run tag @s add immune_water

#
    scoreboard players add $world ui_tc 1
    execute if score $world ui_tc matches 21.. run function ui:1sec

#
    execute as @a[tag=immune_water] at @s if block ~ ~ ~ water run effect give @s levitation 1 9 true
    tag @a[tag=immune_water] remove immune_water
    execute as @a[tag=speedtype_move,tag=!ui_temp_move_nexttick] run function ui:template/stats/shoot_speed
    execute as @a unless score @s health = @s health_old run function ui:template/stats/health
    execute as @a unless score @s armor = @s armor_old run function ui:template/stats/armor
    execute as @a if score @s energy_buff matches 1.. at @s run function ui:template/stats/energy/

# Tickの最後にやることの予約: どんなscheduleよりも遅く実行されるようにここに配置
    schedule function ui:misc/last 1t append
