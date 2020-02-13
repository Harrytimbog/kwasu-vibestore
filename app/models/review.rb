class Review < ApplicationRecord
  belongs_to :product, dependent: :destroy
  validates :content, presence: true
  validates :rating, inclusion: { in: 0..5 }
end
