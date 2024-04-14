# コマンドを実行する
#say a
execute unless data storage ui:gun temp3.BulletData.Explodion.sound[0] run function ui:tmw/237/projectile/killeffect/501/sound/simple with storage ui:gun temp3.BulletData.Explodion
execute if data storage ui:gun temp3.BulletData.Explodion.sound[0] run function ui:tmw/237/projectile/killeffect/501/sound/list
