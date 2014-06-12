class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart

  def index
  	@products = Product.order(:title)
  	@count = increment_count
  end

  def increment_count
  	if session[:counter].nil?
    	session[:counter] = 0
  	end
  	session[:counter] += 1
	end
end

