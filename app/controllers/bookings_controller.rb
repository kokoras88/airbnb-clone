class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_game, only: [:create]
  before_action :set_booking, only: [:show]

  def index
    @bookings = policy_scope(Booking)
    puts "Number of bookings: #{@bookings.count}"
  end

  def show
    # authorize @booking
  end

  def create
    puts "Params: #{params.inspect}"
    @booking = Booking.new(booking_params.merge(game: @game, user: current_user))
    authorize @booking

    if @booking.save
      # flash[:notice] = "Booking was successfully created."
      redirect_to bookings_path
    else
      # flash[:alert] = "There was an error creating the booking."
      redirect_to game_path(@game)
    end
  end

  private

  def set_game
    @game = Game.find(params[:game_id])
    puts @game.inspect
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :game_id)
  end

  # def set_dates
  #   self.start_date = start_date.to_date
  #   self.end_date = end_date.to_date
  # end
end
