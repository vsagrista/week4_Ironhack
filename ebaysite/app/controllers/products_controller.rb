class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def show
    id = params[:id]
    @product = Product.find(id)
    @bid = Bid.new
  end

  def new
    @products = Product.new
    @user = User.new
    @bid = Bid.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def product_params
    params.require(:product).permit(:title,:description,:deadline,:amount,:min_bid)
  end

  def destroy
  end
end
