class Meeting < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :comments

  validates :name, length:{ maximum: 30 }, presence: true
  validates :start_time, presence: true
  validates :image, presence: true

end
