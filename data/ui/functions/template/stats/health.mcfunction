scoreboard players operation $template ui_temp = @s health

attribute @s generic.max_health modifier remove 0-0-0-0-1
attribute @s generic.max_health modifier remove 0-0-0-0-2
attribute @s generic.max_health modifier remove 0-0-0-0-3
attribute @s generic.max_health modifier remove 0-0-0-0-4
attribute @s generic.max_health modifier remove 0-0-0-0-5
attribute @s generic.max_health modifier remove 0-0-0-0-6
attribute @s generic.max_health modifier remove 0-0-0-0-7
attribute @s generic.max_health modifier remove 0-0-0-0-8
attribute @s generic.max_health modifier remove 0-0-0-0-9
attribute @s generic.max_health modifier remove 0-0-0-0-A
attribute @s generic.max_health modifier remove 0-0-0-0-B
attribute @s generic.max_health modifier remove 0-0-0-0-C

attribute @s generic.max_health modifier remove 0-0-0-1-8
attribute @s generic.max_health modifier remove 0-0-0-1-9
attribute @s generic.max_health modifier remove 0-0-0-1-A
attribute @s generic.max_health modifier remove 0-0-0-1-B
attribute @s generic.max_health modifier remove 0-0-0-1-C

execute if score $template ui_temp matches 2048.. run attribute @s generic.max_health modifier add 0-0-0-0-1 "ui_curse2" 2048 add
execute if score $template ui_temp matches 2048.. run scoreboard players remove $template ui_temp 2048
execute if score $template ui_temp matches 1024.. run attribute @s generic.max_health modifier add 0-0-0-0-2 "ui_curse2" 1024 add
execute if score $template ui_temp matches 1024.. run scoreboard players remove $template ui_temp 1024
execute if score $template ui_temp matches 512.. run attribute @s generic.max_health modifier add 0-0-0-0-3 "ui_curse2" 512 add
execute if score $template ui_temp matches 512.. run scoreboard players remove $template ui_temp 512
execute if score $template ui_temp matches 256.. run attribute @s generic.max_health modifier add 0-0-0-0-4 "ui_curse2" 256 add
execute if score $template ui_temp matches 256.. run scoreboard players remove $template ui_temp 256
execute if score $template ui_temp matches 128.. run attribute @s generic.max_health modifier add 0-0-0-0-5 "ui_curse2" 128 add
execute if score $template ui_temp matches 128.. run scoreboard players remove $template ui_temp 128
execute if score $template ui_temp matches 64.. run attribute @s generic.max_health modifier add 0-0-0-0-6 "ui_curse2" 64 add
execute if score $template ui_temp matches 64.. run scoreboard players remove $template ui_temp 64
execute if score $template ui_temp matches 32.. run attribute @s generic.max_health modifier add 0-0-0-0-7 "ui_curse2" 32 add
execute if score $template ui_temp matches 32.. run scoreboard players remove $template ui_temp 32
execute if score $template ui_temp matches 16.. run attribute @s generic.max_health modifier add 0-0-0-0-8 "ui_curse2" 16 add
execute if score $template ui_temp matches 16.. run scoreboard players remove $template ui_temp 16
execute if score $template ui_temp matches 8.. run attribute @s generic.max_health modifier add 0-0-0-0-9 "ui_curse2" 8 add
execute if score $template ui_temp matches 8.. run scoreboard players remove $template ui_temp 8
execute if score $template ui_temp matches 4.. run attribute @s generic.max_health modifier add 0-0-0-0-A "ui_curse2" 4 add
execute if score $template ui_temp matches 4.. run scoreboard players remove $template ui_temp 4
execute if score $template ui_temp matches 2.. run attribute @s generic.max_health modifier add 0-0-0-0-B "ui_curse2" 2 add
execute if score $template ui_temp matches 2.. run scoreboard players remove $template ui_temp 2
execute if score $template ui_temp matches 1.. run attribute @s generic.max_health modifier add 0-0-0-0-C "ui_curse2" 1 add
execute if score $template ui_temp matches 1.. run scoreboard players remove $template ui_temp 1

execute if score $template ui_temp matches ..-16 run attribute @s generic.max_health modifier add 0-0-0-1-8 "ui_curse2" -16 add
execute if score $template ui_temp matches ..-16 run scoreboard players add $template ui_temp 16
execute if score $template ui_temp matches ..-8 run attribute @s generic.max_health modifier add 0-0-0-1-9 "ui_curse2" -8 add
execute if score $template ui_temp matches ..-8 run scoreboard players add $template ui_temp 8
execute if score $template ui_temp matches ..-4 run attribute @s generic.max_health modifier add 0-0-0-1-A "ui_curse2" -4 add
execute if score $template ui_temp matches ..-4 run scoreboard players add $template ui_temp 4
execute if score $template ui_temp matches ..-2 run attribute @s generic.max_health modifier add 0-0-0-1-B "ui_curse2" -2 add
execute if score $template ui_temp matches ..-2 run scoreboard players add $template ui_temp 2
execute if score $template ui_temp matches ..-1 run attribute @s generic.max_health modifier add 0-0-0-1-C "ui_curse2" -1 add
execute if score $template ui_temp matches ..-1 run scoreboard players add $template ui_temp 1

#回復効果を受けないと見た目上の最大HPが変化しないのでHPを0回復する
effect give @s instant_health 1 30 true
scoreboard players operation @s health_old = @s health
