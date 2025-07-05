# コマンドを実行する
#say a
execute unless data storage ui:gun temp3.BulletData.Explosion.command[0] run function ui:tmw/237/projectile/killeffect/501/command/simple with storage ui:gun temp3.BulletData.Explosion
execute if data storage ui:gun temp3.BulletData.Explosion.command[0] run function ui:tmw/237/projectile/killeffect/501/command/list
