class Api::CategoriesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [ :create, :update, :destroy ]
  before_action :set_category, only: %i[show update destroy]

  # GET /categories
  def index
    @categories = Category.all
    render json: @categories
  end

  # GET /categories/:id
  def show
    render json: @category
  end

  # POST /categories
  def create
    @category = Category.new(category_params)

    if @category.save
      render json: @category, status: :created
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /categories/:id
  def update
    if @category.update(category_params)
      render json: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /categories/:id
  def destroy
    @category.destroy
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end
end
