class ProductsController < ApplicationController
  include ApplicationHelper
  before_action :logged_in_user
  
  def index
    @products = Product.all
    @user = current_user
  end

  def show
    @product = Product.find(params[:id])
    @bid = Bid.new
    @sorted_bids = @product.bids.order("amount DESC")
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user_id = current_user.id
    if @product.save
      redirect_to products_path
    else
      render :error
    end
  end

  def product_params
    params.require(:product).permit(:title,:description,:deadline,:amount,:min_bid, :user_id)
  end

  def destroy
  end
end
