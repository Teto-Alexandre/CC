# 数値の設定が共通でめんどくさい奴はオートで設定するようにする

# ストレージのモデルデータを読み込み
item modify entity @s weapon.mainhand ui:gun/value/model_first
execute store result score $model ui_temp run data get storage ui:gun temp.now.Model

# 必要なデータ読み取り
execute store result score $subtype ui_temp run data get storage ui:gun temp.SubType
execute store result score $sptype ui_temp run data get storage ui:gun temp.SPType
execute store result score $speed ui_temp run data get storage ui:gun temp.now.Speed 100
execute store result score $qf ui_temp run data get storage ui:gun temp.now.QFType

execute store result score $ink.max ui_temp run data get storage ui:gun temp.InkMax
execute store result score $ink.m ui_temp run data get storage ui:gun temp.MoveInkRegen
execute store result score $ink.s ui_temp run data get storage ui:gun temp.ShootInkRegen
execute store result score $burst.max ui_temp run data get storage ui:gun temp.BurstMax
execute if score $ink.max ui_temp matches 0 run scoreboard players set $ink.max ui_temp 1000
execute if score $ink.m ui_temp matches 0 run scoreboard players set $ink.m ui_temp 30
execute if score $ink.s ui_temp matches 0 run scoreboard players set $ink.s ui_temp 6
execute if score $burst.max ui_temp matches 0 run scoreboard players set $burst.max ui_temp -1

# データ照合
scoreboard players operation $type ui_temp = $subtype ui_temp
function ui:tmw/237/changed/first/subsp1
scoreboard players operation $ink.sub ui_temp = $w.ink ui_temp
scoreboard players operation $subtime ui_temp = $w.time ui_temp
scoreboard players operation $subct ui_temp = $w.ct ui_temp
scoreboard players operation $subspeed ui_temp = $w.speed ui_temp

scoreboard players operation $type ui_temp = $sptype ui_temp
function ui:tmw/237/changed/first/subsp1
scoreboard players operation $ink.sp ui_temp = $w.ink ui_temp
scoreboard players operation $sptime ui_temp = $w.time ui_temp
scoreboard players operation $spct ui_temp = $w.ct ui_temp
scoreboard players operation $spspeed ui_temp = $w.speed ui_temp
scoreboard players operation $spneed ui_temp = $w.need ui_temp

# 書き込み開始
execute store result storage ui:gun temp.SubInkUse int 1 run scoreboard players get $ink.sub ui_temp
execute store result storage ui:gun temp.SPInkUse int 1 run scoreboard players get $ink.sp ui_temp
execute store result storage ui:gun temp.SubTime int 1 run scoreboard players get $subtime ui_temp
execute store result storage ui:gun temp.SPTime int 1 run scoreboard players get $sptime ui_temp
execute store result storage ui:gun temp.SubCT int 1 run scoreboard players get $subct ui_temp
execute store result storage ui:gun temp.SPCT int 1 run scoreboard players get $spct ui_temp
execute store result storage ui:gun temp.SubSpeed int 1 run scoreboard players get $subspeed ui_temp
execute store result storage ui:gun temp.SPSpeed int 1 run scoreboard players get $spspeed ui_temp
execute store result storage ui:gun temp.SPNeed int 1 run scoreboard players get $spneed ui_temp
execute store result storage ui:gun temp.InkMax int 1 run scoreboard players get $ink.max ui_temp
execute store result storage ui:gun temp.MoveInkRegen int 1 run scoreboard players get $ink.m ui_temp
execute store result storage ui:gun temp.ShootInkRegen int 1 run scoreboard players get $ink.s ui_temp
execute store result storage ui:gun temp.BurstMax int 1 run scoreboard players get $burst.max ui_temp
execute store result storage ui:gun temp.Model int 1 run scoreboard players get $model ui_temp
data modify storage ui:temp temp set from entity @s SelectedItem.tag.tmw
data modify storage ui:temp temp.gun set from storage ui:gun temp
execute unless score $qf ui_temp matches 1.. run data modify storage ui:temp temp.gun.now merge value {QFType:1}
data modify storage ui:temp temp.gun.now merge value {Ink:0,CT:0,Burst:0,SP:0,SubTime:0,SPTime:0,IsHold:0,Amp:0,First:1,EPage:0}

# subデータ照合.gun
execute if score $subtype ui_temp matches 451 run data modify storage ui:temp temp.gun merge value {SubBurstType:1,SubBurst:1,SubBurstMax:-1}
execute if score $subtype ui_temp matches 452 run data modify storage ui:temp temp.gun merge value {SubBurstType:1,SubBurst:15,SubBurstMax:-1}
execute if score $subtype ui_temp matches 453 run data modify storage ui:temp temp.gun merge value {SubBurstType:2,SubBurst:4,SubBurstMax:-1}
execute if score $subtype ui_temp matches 454 run data modify storage ui:temp temp.gun merge value {SubBurstType:2,SubBurst:10,SubBurstMax:-1}
execute if score $subtype ui_temp matches 455 run data modify storage ui:temp temp.gun merge value {SubBurstType:1,SubBurst:1,SubBurstMax:-1}
execute if score $subtype ui_temp matches 456 run data modify storage ui:temp temp.gun merge value {SubBurstType:1,SubBurst:1,SubBurstMax:-1}
execute if score $subtype ui_temp matches 457 run data modify storage ui:temp temp.gun merge value {SubBurstType:1,SubBurst:1,SubBurstMax:-1}
execute if score $subtype ui_temp matches 458 run data modify storage ui:temp temp.gun merge value {SubBurstType:1,SubBurst:1,SubBurstMax:-1}
execute if score $subtype ui_temp matches 459 run data modify storage ui:temp temp.gun merge value {SubBurstType:1,SubBurst:15,SubBurstMax:-1}
execute if score $subtype ui_temp matches 460 run data modify storage ui:temp temp.gun merge value {SubBurstType:4,SubBurst:51,SubBurstMax:60}
execute if score $subtype ui_temp matches 461 run data modify storage ui:temp temp.gun merge value {SubBurstType:2,SubBurst:2,SubBurstMax:-1}
execute if score $subtype ui_temp matches 462 run data modify storage ui:temp temp.gun merge value {SubBurstType:2,SubBurst:4,SubBurstMax:-1}
execute if score $subtype ui_temp matches 463 run data modify storage ui:temp temp.gun merge value {SubBurstType:1,SubBurst:1,SubBurstMax:-1}
execute if score $subtype ui_temp matches 464 run data modify storage ui:temp temp.gun merge value {SubBurstType:1,SubBurst:1,SubBurstMax:-1}

execute if score $subtype ui_temp matches 491 run data modify storage ui:temp temp.gun merge value {SPBurstType:1,SPBurst:1,SPBurstMax:-1}

execute if score $subtype ui_temp matches 401 run data modify storage ui:temp temp.gun merge value {SubBurstType:1,SubBurst:1,SubBurstMax:-1}
execute if score $subtype ui_temp matches 402 run data modify storage ui:temp temp.gun merge value {SubBurstType:1,SubBurst:1,SubBurstMax:-1}
execute if score $subtype ui_temp matches 403 run data modify storage ui:temp temp.gun merge value {SubBurstType:1,SubBurst:1,SubBurstMax:-1}
execute if score $subtype ui_temp matches 404 run data modify storage ui:temp temp.gun merge value {SubBurstType:1,SubBurst:1,SubBurstMax:-1}
execute if score $subtype ui_temp matches 405 run data modify storage ui:temp temp.gun merge value {SubBurstType:1,SubBurst:1,SubBurstMax:-1}

# spデータ照合.gun
execute if score $sptype ui_temp matches 451 run data modify storage ui:temp temp.gun merge value {SPBurstType:1,SPBurst:1,SPBurstMax:-1}
execute if score $sptype ui_temp matches 452 run data modify storage ui:temp temp.gun merge value {SPBurstType:1,SPBurst:15,SPBurstMax:-1}
execute if score $sptype ui_temp matches 453 run data modify storage ui:temp temp.gun merge value {SPBurstType:2,SPBurst:4,SPBurstMax:-1}
execute if score $sptype ui_temp matches 454 run data modify storage ui:temp temp.gun merge value {SPBurstType:2,SPBurst:10,SPBurstMax:-1}
execute if score $sptype ui_temp matches 455 run data modify storage ui:temp temp.gun merge value {SPBurstType:1,SPBurst:1,SPBurstMax:-1}
execute if score $sptype ui_temp matches 456 run data modify storage ui:temp temp.gun merge value {SPBurstType:1,SPBurst:1,SPBurstMax:-1}
execute if score $sptype ui_temp matches 457 run data modify storage ui:temp temp.gun merge value {SPBurstType:1,SPBurst:1,SPBurstMax:-1}
execute if score $sptype ui_temp matches 458 run data modify storage ui:temp temp.gun merge value {SPBurstType:1,SPBurst:1,SPBurstMax:-1}
execute if score $sptype ui_temp matches 459 run data modify storage ui:temp temp.gun merge value {SPBurstType:1,SPBurst:15,SPBurstMax:-1}
execute if score $sptype ui_temp matches 460 run data modify storage ui:temp temp.gun merge value {SPBurstType:4,SPBurst:51,SPBurstMax:60}
execute if score $sptype ui_temp matches 461 run data modify storage ui:temp temp.gun merge value {SPBurstType:2,SPBurst:2,SPBurstMax:-1}
execute if score $sptype ui_temp matches 462 run data modify storage ui:temp temp.gun merge value {SPBurstType:2,SPBurst:4,SPBurstMax:-1}
execute if score $sptype ui_temp matches 463 run data modify storage ui:temp temp.gun merge value {SPBurstType:1,SPBurst:1,SPBurstMax:-1}
execute if score $sptype ui_temp matches 464 run data modify storage ui:temp temp.gun merge value {SPBurstType:1,SPBurst:1,SPBurstMax:-1}

execute if score $sptype ui_temp matches 491 run data modify storage ui:temp temp.gun merge value {SPBurstType:1,SPBurst:1,SPBurstMax:-1}

execute if score $sptype ui_temp matches 401 run data modify storage ui:temp temp.gun merge value {SPBurstType:1,SPBurst:1,SPBurstMax:-1}
execute if score $sptype ui_temp matches 402 run data modify storage ui:temp temp.gun merge value {SPBurstType:1,SPBurst:1,SPBurstMax:-1}
execute if score $sptype ui_temp matches 403 run data modify storage ui:temp temp.gun merge value {SPBurstType:1,SPBurst:1,SPBurstMax:-1}
execute if score $sptype ui_temp matches 404 run data modify storage ui:temp temp.gun merge value {SPBurstType:1,SPBurst:1,SPBurstMax:-1}
execute if score $sptype ui_temp matches 405 run data modify storage ui:temp temp.gun merge value {SPBurstType:1,SPBurst:1,SPBurstMax:-1}

data modify storage ui:temp temp merge value {enableQ:1,enableF:1}

# sub用データ初期化
data modify storage ui:gun temp set value {}

# subデータ照合.sp
execute if score $subtype ui_temp matches 451 run data modify storage ui:gun temp set value {Name:'{"text":"スーパーショット","color":"gold"}',TimeUse:0,ShotType:1,ShotCT:6,BurstCT:12,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:35,SpeedPlus:0,RangeType:3,Range:50,FlyParticle:7,EndParticle:2,Damage:300,MultiShot:1,ShotFootStep:2,Sound:4}
execute if score $subtype ui_temp matches 452 run data modify storage ui:gun temp set value {Name:'{"text":"マルチミサイル","color":"gold"}',TimeUse:14,ShotType:1,ShotCT:0,BurstCT:5,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:10,SpeedPlus:0,RangeType:1,Range:10,FlyParticle:102,EndParticle:102,Damage:0,MultiShot:1,ShotFootStep:0,Sound:3}
execute if score $subtype ui_temp matches 453 run data modify storage ui:gun temp set value {Name:'{"text":"セプタングル","color":"gold"}',TimeUse:1,ShotType:1,ShotCT:1,BurstCT:4,Spread:514,AirSpread:400,SpreadType:2,AirSpreadType:1,Speed:25,SpeedPlus:10,RangeType:3,Range:70,FlyParticle:6,EndParticle:2,Damage:60,MultiShot:7,ShotFootStep:3,Sound:3}
execute if score $subtype ui_temp matches 454 run data modify storage ui:gun temp set value {Name:'{"text":"ハイドロポンプ","color":"gold"}',TimeUse:0,ShotType:1,ShotCT:0,BurstCT:15,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:900,SpeedPlus:0,RangeType:1,Range:150,FlyParticle:101,EndParticle:2,Damage:25,MultiShot:1,ShotFootStep:1,Sound:101}
execute if score $subtype ui_temp matches 455 run data modify storage ui:gun temp set value {Name:'{"text":"ジェットパック","color":"gold"}',TimeUse:0,ShotType:1,ShotCT:7,BurstCT:14,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:80,SpeedPlus:0,RangeType:1,Range:120,FlyParticle:4,EndParticle:115,Damage:100,MultiShot:1,ShotFootStep:0,Sound:3}
execute if score $subtype ui_temp matches 456 run data modify storage ui:gun temp set value {Name:'{"text":"バウンシーボム","color":"gold"}',TimeUse:75,ShotType:1,ShotCT:8,BurstCT:5,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:20,SpeedPlus:0,RangeType:2,Range:80,FlyParticle:104,EndParticle:204,Damage:0,MultiShot:1,ShotFootStep:1,Sound:4}
execute if score $subtype ui_temp matches 457 run data modify storage ui:gun temp set value {Name:'{"text":"トリプルトルネード","color":"gold"}',TimeUse:75,ShotType:1,ShotCT:1,BurstCT:1,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:10,SpeedPlus:0,RangeType:1,Range:10,FlyParticle:102,EndParticle:104,Damage:0,MultiShot:1,ShotFootStep:0,Sound:2}
execute if score $subtype ui_temp matches 458 run data modify storage ui:gun temp set value {Name:'{"text":"ウルトラショット","color":"gold"}',TimeUse:75,ShotType:1,ShotCT:5,BurstCT:10,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:10,SpeedPlus:0,RangeType:1,Range:10,FlyParticle:102,EndParticle:105,Damage:0,MultiShot:1,ShotFootStep:1,Sound:5}
execute if score $subtype ui_temp matches 459 run data modify storage ui:gun temp set value {Name:'{"text":"ロケッティア","color":"gold"}',TimeUse:14,ShotType:1,ShotCT:1,BurstCT:5,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:10,SpeedPlus:0,RangeType:1,Range:10,FlyParticle:102,EndParticle:106,Damage:0,MultiShot:1,ShotFootStep:0,Sound:3}
execute if score $subtype ui_temp matches 460 run data modify storage ui:gun temp set value {Name:'{"text":"ナイスダマ","color":"gold"}',TimeUse:200,ShotType:1,ShotCT:2,BurstCT:4,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:45,SpeedPlus:0,RangeType:2,Range:100,FlyParticle:6,EndParticle:107,Damage:120,MultiShot:1,ShotFootStep:0,Sound:2}
execute if score $subtype ui_temp matches 461 run data modify storage ui:gun temp set value {Name:'{"text":"ウルトラハンコ","color":"gold"}',TimeUse:8,ShotType:1,ShotCT:4,BurstCT:4,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:100,SpeedPlus:0,RangeType:1,Range:6,FlyParticle:-2,EndParticle:114,Damage:400,MultiShot:1,ShotFootStep:0,Sound:102}
execute if score $subtype ui_temp matches 462 run data modify storage ui:gun temp set value {Name:'{"text":"トライスプレッダー","color":"gold"}',TimeUse:1,ShotType:1,ShotCT:1,BurstCT:4,Spread:400,AirSpread:900,SpreadType:1,AirSpreadType:1,Speed:35,SpeedPlus:15,RangeType:3,Range:75,FlyParticle:6,EndParticle:2,Damage:70,MultiShot:3,ShotFootStep:3,Sound:2}
execute if score $subtype ui_temp matches 463 run data modify storage ui:gun temp set value {Name:'{"text":"リフレクトレーザー","color":"gold"}',TimeUse:150,ShotType:1,ShotCT:1,BurstCT:12,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:55,SpeedPlus:0,RangeType:1,Range:80,FlyParticle:109,EndParticle:119,Damage:180,MultiShot:1,ShotFootStep:0,Sound:4,Pierce:2b,BulletData:{hitbox_x:1.0,hitbox_y:1.0}}
execute if score $subtype ui_temp matches 464 run data modify storage ui:gun temp set value {Name:'{"text":"キューインキ","color":"gold"}',TimeUse:500,ShotType:1,ShotCT:1,BurstCT:15,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:35,SpeedPlus:15,RangeType:1,Range:50,FlyParticle:116,EndParticle:501,Damage:100,MultiShot:1,ShotFootStep:0,Sound:4,Pierce:1b,BulletData:{Explosion:{name:'{"text":"キューインキの爆風","color":"gold"}',damage:10.0,range:5.5,paint:5,sound:"playsound entity.firework_rocket.large_blast player @a ~ ~ ~ 2 0.75 0"}}}

execute if score $subtype ui_temp matches 491 run data modify storage ui:gun temp set value {Name:'{"text":"ジェスター・レリック","color":"gold"}',TimeUse:999,ShotType:1,ShotCT:0,BurstCT:0,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:50,SpeedPlus:0,RangeType:3,Range:50,FlyParticle:21,EndParticle:118,Damage:210,MultiShot:1,ShotFootStep:0,Sound:2}

execute if score $subtype ui_temp matches 401 run data modify storage ui:gun temp set value {Name:'{"text":"ブロードソード","color":"gray"}',TimeUse:200,ShotType:1,ShotCT:3,BurstCT:3,Spread:150,AirSpread:150,SpreadType:2,AirSpreadType:2,Speed:300,SpeedPlus:0,RangeType:1,Range:15,FlyParticle:4,EndParticle:2,Damage:190,MultiShot:9,ShotFootStep:2,Sound:3}
execute if score $subtype ui_temp matches 402 run data modify storage ui:gun temp set value {Name:'{"text":"ヘルハウンド","color":"gray"}',TimeUse:200,ShotType:1,ShotCT:10,BurstCT:5,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:10,SpeedPlus:0,RangeType:1,Range:10,FlyParticle:102,EndParticle:103,Damage:0,MultiShot:3,ShotFootStep:1,Sound:2}
execute if score $subtype ui_temp matches 403 run data modify storage ui:gun temp set value {Name:'{"text":"ラインマーカー","color":"gray"}',TimeUse:200,ShotType:1,ShotCT:0,BurstCT:0,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:2000,SpeedPlus:0,RangeType:1,Range:100,FlyParticle:106,EndParticle:-1,Damage:70,MultiShot:1,ShotFootStep:0,Sound:1}
execute if score $subtype ui_temp matches 404 run data modify storage ui:gun temp set value {Name:'{"text":"ブーメラン","color":"gray"}',TimeUse:200,ShotType:1,ShotCT:4,BurstCT:8,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:30,SpeedPlus:0,RangeType:1,Range:200,FlyParticle:107,EndParticle:4,Damage:100,MultiShot:1,ShotFootStep:0,Sound:3}
execute if score $subtype ui_temp matches 405 run data modify storage ui:gun temp set value {Name:'{"text":"ペネトレイター","color":"gray"}',TimeUse:200,ShotType:1,ShotCT:3,BurstCT:3,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:2000,SpeedPlus:0,RangeType:1,Range:150,FlyParticle:108,EndParticle:-1,Damage:150,MultiShot:1,ShotFootStep:0,Sound:5}

# sub詳細書き込み
data modify storage ui:temp temp.sub set from storage ui:gun temp

# sp用データ初期化
data modify storage ui:gun temp set value {}

# spデータ照合.sp
execute if score $sptype ui_temp matches 451 run data modify storage ui:gun temp set value {Name:'{"text":"スーパーショット","color":"gold"}',TimeUse:0,ShotType:1,ShotCT:6,BurstCT:12,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:35,SpeedPlus:0,RangeType:3,Range:50,FlyParticle:7,EndParticle:2,Damage:300,MultiShot:1,ShotFootStep:2,Sound:4}
execute if score $sptype ui_temp matches 452 run data modify storage ui:gun temp set value {Name:'{"text":"マルチミサイル","color":"gold"}',TimeUse:14,ShotType:1,ShotCT:0,BurstCT:5,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:10,SpeedPlus:0,RangeType:1,Range:10,FlyParticle:102,EndParticle:102,Damage:0,MultiShot:1,ShotFootStep:0,Sound:3}
execute if score $sptype ui_temp matches 453 run data modify storage ui:gun temp set value {Name:'{"text":"セプタングル","color":"gold"}',TimeUse:1,ShotType:1,ShotCT:1,BurstCT:4,Spread:514,AirSpread:400,SpreadType:2,AirSpreadType:1,Speed:25,SpeedPlus:10,RangeType:3,Range:70,FlyParticle:6,EndParticle:2,Damage:60,MultiShot:7,ShotFootStep:3,Sound:3}
execute if score $sptype ui_temp matches 454 run data modify storage ui:gun temp set value {Name:'{"text":"ハイドロポンプ","color":"gold"}',TimeUse:0,ShotType:1,ShotCT:0,BurstCT:15,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:900,SpeedPlus:0,RangeType:1,Range:150,FlyParticle:101,EndParticle:2,Damage:25,MultiShot:1,ShotFootStep:1,Sound:101}
execute if score $sptype ui_temp matches 455 run data modify storage ui:gun temp set value {Name:'{"text":"ジェットパック","color":"gold"}',TimeUse:0,ShotType:1,ShotCT:7,BurstCT:14,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:80,SpeedPlus:0,RangeType:1,Range:120,FlyParticle:4,EndParticle:115,Damage:100,MultiShot:1,ShotFootStep:0,Sound:3}
execute if score $sptype ui_temp matches 456 run data modify storage ui:gun temp set value {Name:'{"text":"バウンシーボム","color":"gold"}',TimeUse:75,ShotType:1,ShotCT:8,BurstCT:5,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:20,SpeedPlus:0,RangeType:2,Range:80,FlyParticle:104,EndParticle:204,Damage:0,MultiShot:1,ShotFootStep:1,Sound:4}
execute if score $sptype ui_temp matches 457 run data modify storage ui:gun temp set value {Name:'{"text":"トリプルトルネード","color":"gold"}',TimeUse:75,ShotType:1,ShotCT:1,BurstCT:1,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:10,SpeedPlus:0,RangeType:1,Range:10,FlyParticle:102,EndParticle:104,Damage:0,MultiShot:1,ShotFootStep:0,Sound:2}
execute if score $sptype ui_temp matches 458 run data modify storage ui:gun temp set value {Name:'{"text":"ウルトラショット","color":"gold"}',TimeUse:75,ShotType:1,ShotCT:5,BurstCT:10,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:10,SpeedPlus:0,RangeType:1,Range:10,FlyParticle:102,EndParticle:105,Damage:0,MultiShot:1,ShotFootStep:1,Sound:5}
execute if score $sptype ui_temp matches 459 run data modify storage ui:gun temp set value {Name:'{"text":"ロケッティア","color":"gold"}',TimeUse:14,ShotType:1,ShotCT:1,BurstCT:5,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:10,SpeedPlus:0,RangeType:1,Range:10,FlyParticle:102,EndParticle:106,Damage:0,MultiShot:1,ShotFootStep:0,Sound:3}
execute if score $sptype ui_temp matches 460 run data modify storage ui:gun temp set value {Name:'{"text":"ナイスダマ","color":"gold"}',TimeUse:200,ShotType:1,ShotCT:2,BurstCT:4,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:45,SpeedPlus:0,RangeType:2,Range:100,FlyParticle:6,EndParticle:107,Damage:120,MultiShot:1,ShotFootStep:0,Sound:2}
execute if score $sptype ui_temp matches 461 run data modify storage ui:gun temp set value {Name:'{"text":"ウルトラハンコ","color":"gold"}',TimeUse:8,ShotType:1,ShotCT:4,BurstCT:4,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:100,SpeedPlus:0,RangeType:1,Range:6,FlyParticle:-2,EndParticle:114,Damage:400,MultiShot:1,ShotFootStep:0,Sound:102}
execute if score $sptype ui_temp matches 462 run data modify storage ui:gun temp set value {Name:'{"text":"トライスプレッダー","color":"gold"}',TimeUse:1,ShotType:1,ShotCT:1,BurstCT:4,Spread:400,AirSpread:900,SpreadType:1,AirSpreadType:1,Speed:35,SpeedPlus:15,RangeType:3,Range:75,FlyParticle:6,EndParticle:2,Damage:70,MultiShot:3,ShotFootStep:3,Sound:2}
execute if score $sptype ui_temp matches 463 run data modify storage ui:gun temp set value {Name:'{"text":"リフレクトレーザー","color":"gold"}',TimeUse:150,ShotType:1,ShotCT:1,BurstCT:12,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:55,SpeedPlus:0,RangeType:1,Range:80,FlyParticle:109,EndParticle:119,Damage:180,MultiShot:1,ShotFootStep:0,Sound:4,Pierce:2b,BulletData:{hitbox_x:1.0f,hitbox_y:1.0f}}
execute if score $sptype ui_temp matches 464 run data modify storage ui:gun temp set value {Name:'{"text":"キューインキ","color":"gold"}',TimeUse:500,ShotType:1,ShotCT:1,BurstCT:15,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:35,SpeedPlus:15,RangeType:1,Range:50,FlyParticle:116,EndParticle:501,Damage:100,MultiShot:1,ShotFootStep:0,Sound:4,Pierce:1b,BulletData:{Explosion:{name:'{"text":"キューインキの爆風","color":"gold"}',damage:10.0f,range:5.5f,paint:5,sound:"playsound entity.firework_rocket.large_blast player @a ~ ~ ~ 2 0.75 0"}}}

execute if score $sptype ui_temp matches 491 run data modify storage ui:gun temp set value {Name:'{"text":"ジェスター・レリック","color":"gold"}',TimeUse:999,ShotType:1,ShotCT:0,BurstCT:0,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:50,SpeedPlus:0,RangeType:3,Range:50,FlyParticle:21,EndParticle:118,Damage:210,MultiShot:1,ShotFootStep:0,Sound:2}

execute if score $sptype ui_temp matches 401 run data modify storage ui:gun temp set value {Name:'{"text":"ブロードソード","color":"gray"}',TimeUse:200,ShotType:1,ShotCT:3,BurstCT:3,Spread:150,AirSpread:150,SpreadType:2,AirSpreadType:2,Speed:300,SpeedPlus:0,RangeType:1,Range:15,FlyParticle:4,EndParticle:2,Damage:190,MultiShot:9,ShotFootStep:2,Sound:3}
execute if score $sptype ui_temp matches 402 run data modify storage ui:gun temp set value {Name:'{"text":"ヘルハウンド","color":"gray"}',TimeUse:200,ShotType:1,ShotCT:10,BurstCT:5,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:10,SpeedPlus:0,RangeType:1,Range:10,FlyParticle:102,EndParticle:103,Damage:0,MultiShot:3,ShotFootStep:1,Sound:2}
execute if score $sptype ui_temp matches 403 run data modify storage ui:gun temp set value {Name:'{"text":"ラインマーカー","color":"gray"}',TimeUse:200,ShotType:1,ShotCT:0,BurstCT:0,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:2000,SpeedPlus:0,RangeType:1,Range:100,FlyParticle:106,EndParticle:-1,Damage:70,MultiShot:1,ShotFootStep:0,Sound:1}
execute if score $sptype ui_temp matches 404 run data modify storage ui:gun temp set value {Name:'{"text":"ブーメラン","color":"gray"}',TimeUse:200,ShotType:1,ShotCT:4,BurstCT:8,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:30,SpeedPlus:0,RangeType:1,Range:200,FlyParticle:107,EndParticle:4,Damage:100,MultiShot:1,ShotFootStep:0,Sound:3}
execute if score $sptype ui_temp matches 405 run data modify storage ui:gun temp set value {Name:'{"text":"ペネトレイター","color":"gray"}',TimeUse:200,ShotType:1,ShotCT:3,BurstCT:3,Spread:0,AirSpread:0,SpreadType:1,AirSpreadType:1,Speed:2000,SpeedPlus:0,RangeType:1,Range:150,FlyParticle:108,EndParticle:-1,Damage:150,MultiShot:1,ShotFootStep:0,Sound:5}

# sp詳細書き込み
data modify storage ui:temp temp.sp set from storage ui:gun temp

# 書き込み終了
item modify entity @s weapon.mainhand ui:gun/value/all
scoreboard players set $changed ui_temp 1

# 速度追加
#execute unless score $speed ui_temp matches 0 run item modify entity @s weapon.mainhand ui:gun/value/speed_cc
function ui:tmw/237/changed/first/speed_lore

# 初期状態に戻す
data modify storage ui:gun temp set from entity @s SelectedItem.tag.tmw.gun
data modify storage ui:gun temp.DisplayName set from entity @s SelectedItem.tag.display.Name

# 全快
tag @s add tmw_237_tag_inkfill
tag @s add tmw_237_readtag

# データクリア
data remove storage ui:temp temp