# チャクチ

# ダメージを与える
    execute if score $time ui_temp matches 196 run effect clear @s levitation
    #execute if score $time ui_temp matches 183 run effect give @s resistance 5 5 true
    data modify storage ui:temp Effect set value [{Id:"resistance",Duration:100,Amplifier:127b,ShowParticles:0b}]
    function ui:tmw/237/misc/giveeffect/
    execute if score $time ui_temp matches 192 run particle firework ~ ~1 ~ 0.5 0.5 0.5 0.1 10 force
    execute if score $time ui_temp matches 192 run playsound entity.firework_rocket.twinkle player @a ~ ~ ~ 1 1 0
    execute store result score $temp ui_temp run data get entity @s OnGround
    #tellraw @a [{"score":{"objective":"ui_temp","name":"$temp"}}]
    execute if score $time ui_temp matches ..190 if entity @s[nbt={OnGround:1b},nbt=!{ActiveEffects:[{Id:25}]}] unless score @s ui_tmw237_boost matches -2147483648..30 run function ui:tmw/237/activator/time/256.0