scoreboard players set $success ui_temp 0
execute store result score $type ui_temp run data get entity @s Item.tag.tmw.type
execute store success score $success ui_temp unless score $type ui_temp matches 101 unless score $type ui_temp matches 105 unless score $type ui_temp matches 108 unless score $type ui_temp matches 113 unless score $type ui_temp matches 114 unless score $type ui_temp matches 115 unless score $type ui_temp matches 117 unless score $type ui_temp matches 118
execute if score $success ui_temp matches 0 run function ui:tmw/237/activator/time/464/drain.2.3