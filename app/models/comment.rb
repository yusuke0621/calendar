class Comment < ApplicationRecord
  belongs_to :meeting  # tweetsテーブルとのアソシエーション
  belongs_to :user  # usersテーブルとのアソシエーション
end
