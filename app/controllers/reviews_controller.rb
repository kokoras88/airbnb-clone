class ReviewsController < ApplicationController
  before_action :set_game
  before_action :set_review, only: %i[show edit update destroy]

  def new
    @game = Game.find(params[:game_id])
    @reviews = Review.all
    @review = Review.new
    @review = @game.reviews.new
    authorize @review
  end

  def create
    @review = Review.new(review_params.merge(game: @game, user: current_user))
    authorize @review

    if @review.save
      flash[:notice] = "Review was successfully created."
      redirect_to game_reviews_path(@game)
    else
      flash[:alert] = "There was an error creating the review."
      redirect_to game_reviews_path(@game)
    end
  end

  # def create
  #   puts "Params: #{params.inspect}"
  #   @review = Review.new(review_params.merge(game: @game, user: current_user))
  #   authorize @review

  #   if @review.save
  #     # flash[:notice] = "Booking was successfully created."
  #     redirect_to game_path
  #   else
  #     # flash[:alert] = "There was an error creating the booking."
  #     redirect_to game_path(@game)
  #   end
  # end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to @game, notice: "Review was successfully updated."
    else
      render 'games/show'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to @game, notice: "Review was successfully deleted."
  end

  def show
    @review = Review.find(params[:id])
  end

  private

  def set_game
    @game = Game.find(params[:game_id])
  end

  def set_review
    @review = @game.reviews.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
