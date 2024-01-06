scoreboard players operation $Attacker tds_dmg = $id ui_temp
data merge storage tds: {temp:{Damage:9.00,DamageType:1,DeathMessage:14,WeaponName:'[{"text":"ホップソナー","color":"gold","italic":"false"}]',EPF:-1,BypassArmor:0,BypassResistance:false,DamageCooltime:true}}
function tds:attack

data modify storage ui:temp Effect set value [{id:"glowing",duration:160,amplifier:0b}]
function ui:tmw/237/misc/giveeffect/