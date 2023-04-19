# タメ
    execute if score $ishold ui_temp < $burst.max ui_temp at @s run playsound block.lever.click player @a ~ ~ ~ 0.6 1.4 0
    execute if score $bursttype ui_temp matches 11 if score $shotmode ui_temp matches 1 if score $ishold ui_temp < $burst.max ui_temp at @s run scoreboard players set $shottime ui_temp 0
    execute if score $bursttype ui_temp matches 11 if score $shotmode ui_temp matches 2 if score $ishold ui_temp < $burst.max ui_temp at @s run scoreboard players add $chargetime ui_temp 1
    execute unless score $module ui_world matches 1 unless score $ishold ui_temp <= $burst.max ui_temp at @s positioned ~ ~0.1 ~ run particle end_rod ~ ~ ~ 0.5 0.1 0.5 0.05 1 force
    execute if score $module ui_world matches 1 unless score @s module matches 20 unless score $ishold ui_temp <= $burst.max ui_temp at @s positioned ~ ~0.1 ~ run particle end_rod ~ ~ ~ 0.5 0.1 0.5 0.05 1 force
    execute if score $ishold ui_temp <= $burst.max ui_temp run function ui:tmw/237/burst/hold_charging
    execute if score $bursttype ui_temp matches 12 if score $ishold ui_temp > $burst.max ui_temp at @s run scoreboard players operation $multibullet ui_temp = $multibulletmax ui_temp