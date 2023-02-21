class CategoriesController < ApplicationController
  def index
    @categories = policy_scope(Category)
  end

  def show
    @category = Category.find(params[:id])
    @games = Game.joins(:categories).where(categories: { name: @category.name })
    authorize @category
    authorize @games
  end
end
