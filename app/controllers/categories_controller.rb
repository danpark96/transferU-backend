class CategoriesController < ApplicationController
  skip_before_action :authorized
  
  def index
    categories = Category.all
    render :json => categories
  end

  def show
    category = Category.find(params[:id])
    render :json => category
  end

  def new
    category = Category.new
  end

  def create
    category = Category.new(category_params)
    category.save
    render :json => category
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

end
