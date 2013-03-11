class CategoriesController < ApplicationController

  def create
    @category = Category.new(params[:category])
    @category.save
    redirect_to :index
  end

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def show
    @category = Category.find_by_id(params[:id]);
    if @category.nil?
      render :text => "No category for that ID."
    end
  end

  def destroy
    Category.find(params[:id]).destroy
    redirect_to :back
  end

  def edit
    @category = Category.find_by_id(params[:id])
    render :new
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params[:category])
      redirect_to(@category)
    else
      render :action => :edit
    end
  end

end
