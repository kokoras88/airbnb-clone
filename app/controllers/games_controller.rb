class GamesController < ApplicationController
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
      redirect_to game_path(@game) # later to be changed in game_path(@game) when we have a show
    else
      render :new, status: :unprocessable_entity
    end
    authorize @game
  end

  def show
    @game = Game.find(params[:id])
    @booking = Booking.new(game: @game)
    authorize @game
  end

  def edit
    @game = Game.find(params[:id])
    authorize @game
  end

  def update
    @game = Game.find(params[:id])
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

  def game_params
    params.require(:game).permit(:price, :title, :description, :photo)
  end
end
