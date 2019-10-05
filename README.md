# 概要
髪型を投稿するwebサービスです。<br>
自分の髪型をどうするか悩んだ時に他人の投稿を参考にすることで選択肢が増えると思い作成いたしました。<br>
https://hairstylepost.herokuapp.com/
## 開発工程
masterブランチに直接pushせず、workという作業用のブランチを切ってそこにPush、Masterにmergeしました。<br>
## 使用技術や機能一覧
* ユーザー管理機能(devise)
    * 新規ユーザー登録機能  
    * ユーザー詳細表示機能  
    * プロフィールの編集機能  
    * ユーザーログイン機能  
* 投稿管理機能  
    * 投稿機能  
    * 詳細表示機能  
    * 画像アップロード機能(CarrierWave)  
    * Amazon s3  
    * 投稿の削除機能  
    * 記事一覧表示機能  
    * 記事検索機能  
    * コメント機能  
    * ページネーション機能(kaminari)  
    * 検索機能(ransack)  
* コード整形(rubicon)  
## テスト
Rspec<br>
統合テスト<br>
単体テスト<br>
## DB
Mysql<br>
## 環境
Ruby２.５.３<br>
Rails５.２.３
