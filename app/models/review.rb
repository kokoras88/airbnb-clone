class Review < ApplicationRecord
  belongs_to :game
  belongs_to :user

  validates :content, presence: true
  validates :rating, presence: true
end
