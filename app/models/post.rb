class Post < ApplicationRecord
  validates :name, presence: true, maximum: 50
  validates :description, presence: true
  validates :journalist_name, presence: true, maximum: 50
  validates :active, presence: true
  validates :time_mew, presence: true
  validates :summary, presence: true, maximum: 50

  has_one_attached :image

  validates :image, attached: true
end
