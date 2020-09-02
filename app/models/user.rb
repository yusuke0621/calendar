class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :comments

  validates :nickname, presence: true, length: { maximum: 6 }
  validates :email, presence: true
  validates :password, presence: true, format: { with:  /\A(?=.*?[a-zA-Z])(?=.*?\d)[a-zA-Z\d]{6,100}+\z/ }, on: :create
end
