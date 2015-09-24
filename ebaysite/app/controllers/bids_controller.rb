class BidsController < ApplicationController
  def index
    @product = Product.where(id: params[:product_id])[0]
    #binding.pry
  end
  def new
    @bid = Bid.new
  end

  def create
    user = User.where(email: params[:bid][:user])
    amount = params[:bid][:amount]

    @bid = Bid.create(amount: amount, user_id: user[0].id, product_id: params[:product_id].to_i )
    @product = Product.find(@bid.product_id)
    if @bid.errors.blank? == false
      @errors = @bid.errors.messages
      render  :error
    else
      if Time.now >= @product.deadline
        @winner_amount = amount
        @winner_user = user[0].name
        render :show
      else
        @winner_bid = @product.bids.order("amount DESC").first
        @top_user = @winner_bid.user.name
        render :show
      end
    end
  end
end
