#見た目
    execute if score $Lethal tds_dmg matches 1 run particle flash ~ ~1 ~ 0 0 0 0 1 force
    execute if score $Lethal tds_dmg matches 1 run playsound entity.zombie.attack_iron_door player @a ~ ~1 ~ 1.5 1.6 0
    
    execute if score $Lethal tds_dmg matches 1 as @a if score $id ui_temp = @s ui_id at @s run playsound entity.zombie.attack_iron_door player @a ~ ~1 ~ 1.5 1.6 0
