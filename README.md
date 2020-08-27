# maneja DB設計

## meetingsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, foreign_key: true|
|image|string||
|user_id|integer|null: false, foreign_key: true|
|start_time|string|null: false
### Association
- belongs_to :user
- has_many :comments

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false, unique: true|
|password|string|null: false|
|nickname|string|null: false, unique: true|
### Association
- has_many :meetings
- has_many :comments


## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|meeting_id|integer|null: false, foreign_key: true|
|text|string|
### Association
- belongs_to :meeting
- belongs_to :user
