# モジュール別の算術
execute if score $module ui_world matches 1 as @a if score @s module matches 30 run scoreboard players add @s ink_regen 200
execute if score $module ui_world matches 1 as @a if score @s module matches 33 run scoreboard players add @s health 100
execute if score $module ui_world matches 1 as @a if score @s module matches 33 run scoreboard players remove @s ink_regen 50
execute if score $module ui_world matches 1 as @a if score @s module matches 36 run scoreboard players remove @s sub_eff_acc 50
execute if score $module ui_world matches 1 as @a if score @s module matches 46 run scoreboard players remove @s health 40
