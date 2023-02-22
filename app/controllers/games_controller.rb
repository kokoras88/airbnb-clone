class GamesController < ApplicationController
  before_action :authenticate_user!, except: %i[home index show]
  before_action :set_current_user
  before_action :set_game, only: %i[show update edit]
  before_action :check_if_booked, only: %i[show]


  def home
    authorize Game
  end

  def index
    @games = Game.all
    @games = policy_scope(Game)
  end

  def new
    @game = Game.new
    authorize @game
  end

  def create
    @game = Game.new(game_params)

    @game.user = current_user
    if @game.save
      params[:game][:categories].each_with_index do |category, i|
        if i != 0
          category = Category.find(category)
          GameCategory.create(game: @game, category: category)
        end
      end
      redirect_to game_path(@game) # later to be changed in game_path(@game) when we have a show
    else
      render :new, status: :unprocessable_entity
    end
    authorize @game
  end

  def show
    @bookings = Booking.all
    @booking = Booking.new(game: @game)
    @reviews = @game.reviews
    authorize @game
  end

  def edit
    authorize @game
  end

  def update
    if @game.update(game_params)
      redirect_to game_path(@game)
    else
      render :new, status: :unprocessable_entity
    end
    authorize @game
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_path
    authorize @game
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:price, :title, :description, :photo)
  end

  def set_current_user
    @current_user = current_user
  end

  def check_if_booked
    booked = false
    if @current_user
      @current_user.bookings.each do |booking|
        booked = true if booking.game == @game
      end
    end
    @booked = booked
  end
end
