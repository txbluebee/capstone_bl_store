class CartsController < ApplicationController
  def show
  end

  def clean
    current_cart.clean!
    redirect_to cart_path, warning: 'Your cart is empty now!'
  end

  def checkout
    @order = Order.new
  end
end
