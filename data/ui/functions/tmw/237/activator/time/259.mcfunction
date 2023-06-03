# アウェイクパワー

particle firework ~ ~0.9 ~ 0.5 0.5 0.5 0.1 1 force
execute if predicate ui:percentage/30 run playsound entity.firework_rocket.twinkle player @a ~ ~ ~ 1 1 0
effect give @s speed 1 2 false

# 隠れられない
tag @s add cant_hide