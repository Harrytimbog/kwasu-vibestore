class Product < ApplicationRecord
  has_one_attached :photo
  has_many :reviews, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, uniqueness: true
end
