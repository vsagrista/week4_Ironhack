class Bid < ActiveRecord::Base
  belongs_to :product
  belongs_to :user
  validate :has_errors?

  def has_errors?
    @product = Product.find(self.product_id)
    @min_bid = @product.min_bid
    if @product.bids.all.length == 0
      more_than_min_bid?
    else
      @winner_bid = @product.bids.order("amount DESC").first
      @winner_amount = @winner_bid.amount
      @min_bid= @product.min_bid
      if more_than_min_bid?
      elsif reached_deadline?(@product)
      else is_bigger_bid?(@min_bid,@winner_amount)
      end
    end
  end

  def more_than_min_bid?
    if amount.to_i < @min_bid
      errors.add(:field, "Your bid is less than the minimum price.")
    end
  end

  def reached_deadline?(product)
    if Time.now >= product.deadline
      errors.add(:field, "Deadline not yet.")
    end
  end

  def is_bigger_bid?(min_bid,winner_amount)
    if amount.to_i < winner_amount || amount.to_i == winner_amount
      errors.add(:field, "Your bid must be larger than the current highest bid.")
    end
  end
end
