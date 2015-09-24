class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def show
    @product = Product.find(params[:id])
    @bid = Bid.new
  end

  def new
    @product = Product.new
  end

  def create
     #binding.pry
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def product_params
    params.require(:product).permit(:title,:description,:deadline,:user_id,:amount,:min_bid)
  end

  def destroy
  end
end
