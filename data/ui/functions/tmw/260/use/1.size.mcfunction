execute store result score $x ui_temp run data get entity @s Pos[0] 1
execute store result score $y ui_temp run data get entity @s Pos[1] 1
execute store result score $z ui_temp run data get entity @s Pos[2] 1

execute unless score $x1 ui_temp matches -2147483648..2147483647 run scoreboard players operation $x1 ui_temp = $x ui_temp
execute unless score $x2 ui_temp matches -2147483648..2147483647 run scoreboard players operation $x2 ui_temp = $x ui_temp
execute unless score $y1 ui_temp matches -2147483648..2147483647 run scoreboard players operation $y1 ui_temp = $y ui_temp
execute unless score $y2 ui_temp matches -2147483648..2147483647 run scoreboard players operation $y2 ui_temp = $y ui_temp
execute unless score $z1 ui_temp matches -2147483648..2147483647 run scoreboard players operation $z1 ui_temp = $z ui_temp
execute unless score $z2 ui_temp matches -2147483648..2147483647 run scoreboard players operation $z2 ui_temp = $z ui_temp

scoreboard players operation $x1 ui_temp < $x ui_temp
scoreboard players operation $y1 ui_temp < $y ui_temp
scoreboard players operation $z1 ui_temp < $z ui_temp
scoreboard players operation $x2 ui_temp > $x ui_temp
scoreboard players operation $y2 ui_temp > $y ui_temp
scoreboard players operation $z2 ui_temp > $z ui_temp
