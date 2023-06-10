# キルログの名前を ID に合わせて決める
execute if score $Attacker tds_dmg matches -1 run data modify storage tds: temp.AttackerName set value '{"text":"TF-Vanguard","color":"yellow"}'
#tellraw @a ["",{"score":{"name": "$Attacker","objective": "tds_dmg"}},{"text":": "},{"storage":"tds:","nbt":"temp.AttackerName","interpret":true}]