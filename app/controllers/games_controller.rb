class GamesController < ApplicationController
  def home
  end

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    if @game.save
      redirect_to games_path # later to be changed in game_path(@game) when we have a show
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def game_params
    params.require(:game).permit(:price, :title, :description)
  end
end
