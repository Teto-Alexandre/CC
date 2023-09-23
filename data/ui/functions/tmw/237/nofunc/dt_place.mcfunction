#

# ダメテスを置く
summon armor_stand 0 30 -44 {Marker:1b,Tags:["damage_tester","ui_12_1"]}
summon armor_stand 1 30 -54 {Marker:1b,Tags:["damage_tester","ui_12_1"]}
summon armor_stand -1 30 -54 {Marker:1b,Tags:["damage_tester","ui_12_1"]}
summon armor_stand 2 30 -64 {Marker:1b,Tags:["damage_tester","ui_12_1"]}
summon armor_stand -2 30 -64 {Marker:1b,Tags:["damage_tester","ui_12_1"]}
summon armor_stand 3 30 -74 {Marker:1b,Tags:["damage_tester","ui_12_1"]}
summon armor_stand -3 30 -74 {Marker:1b,Tags:["damage_tester","ui_12_1"]}
summon armor_stand 4 30 -84 {Marker:1b,Tags:["damage_tester","ui_12_1"]}
summon armor_stand -4 30 -84 {Marker:1b,Tags:["damage_tester","ui_12_1"]}

summon armor_stand 0 32 -94 {Marker:1b,Tags:["damage_tester","ui_12_1"]}
summon armor_stand 0 33 -104 {Marker:1b,Tags:["damage_tester","ui_12_1"]}
summon armor_stand 0 34 -114 {Marker:1b,Tags:["damage_tester","ui_12_1"]}

summon armor_stand 23 30 -40 {Marker:1b,Tags:["damage_tester","ui_12_1","tester_move"],Rotation:[45.0f,0.0f]}
summon armor_stand 23 30 -42 {Marker:1b,Tags:["damage_tester","ui_12_1","tester_move"],Rotation:[135.0f,0.0f]}

# ダメテスのロジック読み込み
function ui:ui/12/ss
