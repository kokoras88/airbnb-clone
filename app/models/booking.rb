class Booking < ApplicationRecord
  belongs_to :game
  belongs_to :user

  validates :start_date, :end_date, presence: true
  validate :end_date_after_start_date
  before_validation :set_dates

  private

  def set_dates
    self.start_date = start_date.to_date
    self.end_date = end_date.to_date
  end

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date < start_date
      errors.add(:end_date, "must be after the start date")
    end
  end
end
