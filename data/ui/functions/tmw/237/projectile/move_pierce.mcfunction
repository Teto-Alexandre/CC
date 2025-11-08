execute if entity @s[tag=tmw_237_pierce_attacked,tag=!tmw_237_pierce_unattacked] run tag @s remove tmw_237_pierce_attacked
execute if entity @e[tag=tmw_237_pierce_hit,tag=!tmw_237_pierce_unhit] run tag @e[tag=tmw_237_pierce_hit,tag=!tmw_237_pierce_unhit] remove tmw_237_pierce_hit
tag @s[tag=tmw_237_pierce_unattacked] remove tmw_237_pierce_unattacked
tag @e[tag=tmw_237_pierce_unhit] remove tmw_237_pierce_unhit