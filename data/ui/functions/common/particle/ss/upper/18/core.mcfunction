### Particle Image Function
### Version: 1.0.4
### Width: 64
### Height: 64
### ParticleType: dust

### This file was generated by Kemo431's Particle-Converter.
### Download Link: https://github.com/kemo14331/Particle-Converter

#
teleport @s ~ ~ ~ ~4 0

particle minecraft:dust 0.5 1 0.5 1 ^ ^ ^2.3 0 0 0 0 1 force @a
particle minecraft:dust 0.5 1 0.5 1 ^ ^ ^-2.3 0 0 0 0 1 force @a
particle minecraft:dust 0.5 1 0.5 1 ^2.3 ^ ^ 0 0 0 0 1 force @a
particle minecraft:dust 0.5 1 0.5 1 ^-2.3 ^ ^ 0 0 0 0 1 force @a

#
execute if score $is ui_temp matches 59.. run kill @s