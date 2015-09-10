class BidsController < ApplicationController
  def new
    @bid = Bid.new
  end

  def create
    user = User.where(email: params[:bid][:user])
    amount = params[:bid][:amount]
    @bid = Bid.create(amount: amount, user_id: user[0].id, product_id: params[:product_id].to_i )
    @product = Product.find(@bid.product_id)
    min_bid = @product.min_bid
    winner = @product.bids.order("amount DESC").first

    if Time.now >= @product.deadline && amount.to_i > min_bid
      @winner_amount = winner.amount
      @winner_user = winner.user.name
      render :show
    else
      @top_bid = winner.amount
      @top_user = winner.user.name
      render :show
    end
  end
end
