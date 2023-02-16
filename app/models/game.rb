class Game < ApplicationRecord
  has_many :game_categories
  has_many :categories, through: :game_categories
  belongs_to :user
  has_many :bookings
end
