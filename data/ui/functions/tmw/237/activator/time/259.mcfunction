# アウェイクパワー

particle firework ~ ~0.9 ~ 0.5 0.5 0.5 0.1 1 force
execute if predicate ui:percentage/30 run playsound entity.firework_rocket.twinkle player @a ~ ~ ~ 1 1 0
data modify storage ui:temp Effect set value [{Id:"speed",Duration:20,Amplifier:2b}]
function ui:tmw/237/misc/giveeffect/

# 隠れられない
tag @s add cant_hide