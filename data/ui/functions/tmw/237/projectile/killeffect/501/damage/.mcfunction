# コマンドを実行する
#say a
execute unless data storage ui:gun temp3.BulletData.Explosion.damage[0] run function ui:tmw/237/projectile/killeffect/501/damage/simple with storage ui:gun temp3.BulletData.Explosion
execute if data storage ui:gun temp3.BulletData.Explosion.damage[0] run function ui:tmw/237/projectile/killeffect/501/damage/list

data remove storage ui:temp temp.explodion
tag @e[tag=tmw237_explode_attacked] remove tmw237_explode_attacked