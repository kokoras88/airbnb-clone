class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :photo
  has_many :bookings
  has_many :games, through: :bookings
  has_many :reviews, dependent: :destroy


  validates :first_name, :last_name, presence: true
  # validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'Please enter a valid email!'}

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
