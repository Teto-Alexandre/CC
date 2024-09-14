data modify storage ui:temp Effect set value [{id:"darkness",duration:2,amplifier:0b}]
function ui:tmw/237/misc/giveeffect/
effect clear @s speed
execute if entity @s[tag=speedtype_shoot] run function ui:template/stats/shoot_speed
execute if entity @s[tag=speedtype_move] run function ui:template/stats/move_speed
scoreboard players operation @s tds_recent_attacked_by = $id ui_temp