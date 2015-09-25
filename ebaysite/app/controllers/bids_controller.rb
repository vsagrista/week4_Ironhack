class BidsController < ApplicationController
  def index
    @product = Product.where(id: params[:product_id])[0]
  end
  
  def new
    @bid = Bid.new
  end

  def create
    user = User.where(email: params[:bid][:user])[0]
    amount = params[:bid][:amount]
    if !user.nil? && user == current_user
      @bid = Bid.create(amount: amount, user_id: user.id, product_id: params[:product_id].to_i )
      @product = Product.find(@bid.product_id)
        render :index
    else 
      render :error 
    end
  end
end
