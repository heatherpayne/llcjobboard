class CategoriesController < ApplicationController

  def create
    @category = Category.new(params[:category])
    @category.save
    redirect_to(@category)
  end

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def show
    @category = Category.find(params[:id]);
  end

end
