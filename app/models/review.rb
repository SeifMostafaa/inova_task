class Review < ApplicationRecord
  validates :comment, presence: :true
  validates :rate, numericality: { in: 0..5 }

  belongs_to :user
  belongs_to :post
end
