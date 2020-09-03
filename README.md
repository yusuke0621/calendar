# MANEJA

"MANEJA"は工程管理などに使えるスケージュール管理アプリです。
ログインしたユーザーはスケジュール（画像）の投稿、編集、コメントすることができます。
投稿した内容をユーザー同士がカレンダーで確認し合うことができます。

## 🌐 App URL
https://maneja.herokuapp.com/  
テスト用アカウント  
メールアドレス:  test@test.com  
パスワード: q11111

## :white_check_mark:Features
[![Image from Gyazo](https://i.gyazo.com/19b0bad5c2bef045face9adf7cda36e7.gif)](https://gyazo.com/19b0bad5c2bef045face9adf7cda36e7)
- 投稿したスケジュールが"SCHEDULE LIST",カレンダーに反映されます。  

[![Image from Gyazo](https://i.gyazo.com/4bc0a159136511869a88ea39598e84b8.gif)](https://gyazo.com/4bc0a159136511869a88ea39598e84b8)
- 画像も投稿でき、ログインしているユーザーは各投稿にコメントすることができます。

## :white_check_mark:Note
- 接続先およびログイン情報については、上記の通りです。
- 投稿方法は以下の手順で確認できます
  テストアカウントでログイン→トップページから"new"ボタン押下→スケジュール入力、画像投稿→登録する
  
## :white_check_mark:background
住宅のリフォーム企画の仕事をしていた私が、現場の職人さんとの工程管理を円滑に、簡単に運用できるような思いを込めて開発しました。
また、プログラミングスクールで学習しなかった機能に挑戦したい、今後追加の実装がしやすいという観点から、”カレンダー”を使い、開発しました。

## :white_check_mark:Requirement
- Ruby/Ruby on Rails/sqlite/Github/Heroku/Visual Studio Code

## :white_check_mark: Usage
'$ git clone https://github.com/yusuke0621/calendar.git'

## :white_check_mark:License
- [MIT](https://github.com/yusuke0621/calendar/blob/master/LICENSE)

### :white_check_mark:future
### 今後の実装予定について
- end_timeの設定、カレンダーに反映
- APIを使用した会員登録
- グループ化機能でより使いやすく

## :white_check_mark:DB
### meetingsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, foreign_key: true|
|image|string||
|user_id|integer|null: false, foreign_key: true|
|start_time|string|null: false
### Association
- belongs_to :user
- has_many :comments

### usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false, unique: true|
|password|string|null: false|
|nickname|string|null: false, unique: true|
### Association
- has_many :meetings
- has_many :comments


### commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|meeting_id|integer|null: false, foreign_key: true|
|text|string|
### Association
- belongs_to :meeting
- belongs_to :user
![](maneja_er.png)