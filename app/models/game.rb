class Game < ApplicationRecord
  has_one_attached :photo
  has_many :game_categories
  has_many :categories, through: :game_categories
  belongs_to :user
  has_many :bookings

  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
