#

#
kill @e[type=item]
kill @e[type=minecraft:iron_golem]
kill @e[type=marker,tag=!master,tag=!count]
teleport @a -2 30.5 6
spawnpoint @a -2 30 6
gamemode adventure @a

schedule function ui:tmw/237/nofunc/dt_place 1s