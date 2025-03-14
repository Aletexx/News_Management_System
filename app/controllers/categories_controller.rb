class CategoriesController < ApplicationController

  before_action :set_category, only: [:edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  # Display form to create a new category
  def new
    @category = Category.new
  end

  # Create new category
  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path, notice: "Category created successfully."
    else
      render :new
    end
  end

  # edit an existing category
  def edit
  end

  # Update an existing category
  def update
    if @category.update(category_params)
      redirect_to categories_path, notice: "Category updated successfully."
    else
      render :edit
    end
  end

  # Delete a category
  def destroy
    @category.destroy
    redirect_to categories_path, notice: "Category deleted successfully."
  end

  private
  # Find the category by ID
  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end
end

