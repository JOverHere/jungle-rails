class Admin::CategoryController < ApplicationController

  http_basic_authenticate_with :name => ENV["MY_USER"], :password => ENV["MY_PASS"]

  def index
    @category = Category.order(id: :desc).all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to [:admin, :products], notice: 'Category created!'
    else
      render :new
    end
  end

  private

  def category_params
    params.require(has_many).permit(
      :products
    )
  end

end
