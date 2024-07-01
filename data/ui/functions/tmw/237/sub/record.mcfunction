scoreboard players reset $Attacker tds_dmg
tag @e[tag=tds_tempa] remove tds_tempa
tag @s add tds_ui_highdamage_temp
data merge storage tds: {temp:{Damage:4.00,DamageType:1,DeathMessage:13,WeaponName:"",EPF:-1,BypassArmor:0,BypassResistance:false}}
tag @s remove drain
execute at @s run function tds:attack