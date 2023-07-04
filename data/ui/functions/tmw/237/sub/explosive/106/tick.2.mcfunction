execute if entity @s[nbt=!{ActiveEffects:[{Id:21}]}] run data modify storage ui:temp Effect set value [{Id:"health_boost",Duration:100,Amplifier:1b},{Id:"regeneration",Duration:20,Amplifier:5b}]
execute if entity @s[nbt={ActiveEffects:[{Id:21}]}] run data modify storage ui:temp Effect set value [{Id:"regeneration",Duration:20,Amplifier:5b}]
function ui:tmw/237/misc/giveeffect/