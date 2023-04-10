class Post < ApplicationRecord
  belongs_to :user
  has_many :reviews

  paginates_per 10
end
