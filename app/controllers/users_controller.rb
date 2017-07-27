class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def orders
    @user = User.find(params[:id])
    if @user.orders.present?
      @orders = @user.orders
    end
  end
end
