class Review < ApplicationRecord
  belongs_to :game
  belongs_to :user

  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true, in: 1..5 }
end
