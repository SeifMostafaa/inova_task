class Post < ApplicationRecord
  validates :title, presence: :true
  validates :body, presence: :true
  
  belongs_to :user
  has_many :reviews

  paginates_per 10
end
