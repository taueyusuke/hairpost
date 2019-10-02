# 髪型を投稿するSNS
髪型を投稿するwebサービスです。<br>
自分の髪型をどうするか悩んだ時に他人の投稿を参考にすることで選択肢が増えると思い作成いたしました。<br>
https://hairpost.herokuapp.com/
## 使用技術や機能一覧
ユーザー登録、ログイン機能全般(devise)<br>
プロフィールの編集機能<br>
記事投稿機能(CRUD)<br>
ページネーション機能(kaminari)<br>
人気投稿ランキング表示機能<br>
いいね機能<br>
画像アップロード機能(CarrierWave)<br>
検索機能(ransack)<br>
コメント機能<br>
コード整形(rubicon)<br>
## テスト
Rspec<br>
統合テスト<br>
単体テスト<br>
## DB
Mysql<br>
## 開発工程
masterブランチに直接pushせず、workという作業用のブランチを切ってそこにPush、Masterにmergeしました。<br>
## 環境
Ruby２.５.３<br>
Rails５.２.３<br>
