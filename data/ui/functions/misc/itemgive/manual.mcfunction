# 完全製作マニュアル

## めちゃくちゃ古いまま更新されません

    ## gun

        ### Name : 武器の名前
        ### SubType, SPType : サブスペの種類、一番上の表を見てくれ
        ### BaseType : 基本 1 でいい、長押しでショットを打ち分けれる武器が作れる、上級者向け
        ### BurstType : 基本 1 でいい、長押しした時に撃ち続けるかとかチャージできるかとかが変わる、上級者向け
        ### Burst : 一クリックのバースト数
        ### BurstMax : BurstType がチャージ系の時に最大チャージまでの時間を決める
        ### SPTime : スペシャルの効果時間、スペシャルポイントが 0 で固定される時間
        ### SPNeed : スペシャルのチャージに必要なポイント数、基本 300 で統一
        ### InkMax : インクタンクの上限、基本 1000 で統一
        ### MainInkUse, HoldInkUse, FinalInkUse, SubInkUse : 一発のインク消費量
        ### MoveInkRegen : 移動形態のインク回復( 1tick ごと)、基本 30 で統一
        ### ShootInkRegen : 通常時のインク回復( 1tick ごと)、基本 6 で統一
        ### now{} : Model は武器の3Dモデル、後は固定

    ## main, hold, final, sp

        ### ShotType : 1 なら射撃, 2 なら近接(ローラー)

        ### 射撃の場合

        ### ShotCT, BurstCT : 前者はショットごとの間隔, 後者は一バースト撃ち切った後のクールタイム
        ### Spread, AirSpread : 地上と空中でどれぐらいブレるか
        ### SpreadType, AirSpreadType : 基本 1 でいい、ローラーの縦振り横振りを作りたい時は 2, 3 にするとできる
        ### Speed : 1tick に進む距離( 1 増えるごとに 0.05m/t 速くなる)(即時到達する弾を作るときは射程の 10 倍の値を設定せよ)
        ### SpeedPlus : 速度のブレの最大値(弾速の最小が Speed, 最大が Speed+SpeedPlus になるように発射)
        ### RangeType : 1,2 は進み切ったら爆発, 3,4は進み切ったら垂直落下, 5は進み切ったら消滅 ( 2,3 は山なりに飛ぶ)
        ### Range : 最大射程( 1 増えるごとに 0.5m 伸びる)
        ### FlyParticle : 飛行中どういう塗り+攻撃判定になるか、マネしたい武器と同じ数値に設定しておけばいい
        ### Endparticle : 爆発時どうなるか、1~10 まであり数字が大きいほど塗り範囲が広くなる
        ### Damage : 命中時に与えるダメージ( 1 増えるごとに 0.05♥ 多くなる)
        ### MultiShot : 一度に撃つ弾の数、増やすとショットガンみたいになる
        ### ShotFootStep : 足元の塗り、1~3で大きくなるほど広い範囲が塗れる
        ### Sound : 1固定、ここは変えないで発射時の音は適当に別で申告してくれたら作るかもしれない

        ### ローラーの場合

        ### CT : 塗り+攻撃判定が発生する間隔、基本 0 で固定
        ### Reach : ローラーの判定が出る場所までの距離、増やすと遠くを塗るようになる
        ### Width : 塗り幅、増やすと単純に性能が上がる
        ### Speed : 塗ってるときに加速するか減速するか、-3 ~ 3まである、大きいほど速く、小さいほど遅くなる
        ### Damage : 1hitのダメージ( 1 増えるごとに 0.05♥ 多くなる)
        ### Sound : 1固定、ここは変えないで発射時の音は適当に別で申告してくれたら作るかもしれない