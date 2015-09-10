class BidsController < ApplicationController
  def new
    @bid = Bid.new
  end

  def create
    user = User.where(email: params[:bid][:user])
    amount = params[:bid][:amount]
    @bid = Bid.create(amount: amount, user_id: user[0].id, product_id: params[:product_id].to_i )
    @product = Product.find(@bid.product_id)
    if Time.now >= @product.deadline
      @winner_amount = @product.bids.order("amount DESC").first.amount
      @winner_user = @product.bids.order("amount DESC").first.user.name
      render :show
    else
      render :show
    end
  end

end
