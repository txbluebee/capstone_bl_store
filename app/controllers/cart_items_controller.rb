class CartItemsController < ApplicationController
  before_action :authenticate_user!

  def update
    @cart_item = current_cart.cart_items.find_by(product_id: params[:id])
    if @cart_item.product.quantity >= cart_item_params[:quantity].to_i
      @cart_item.update(cart_item_params)
      redirect_to cart_path, info: 'successfully updated quantity'
    else
      redirect_to cart_path, danger: "Only #{@cart_item.product.quantity} left for #{@cart_item.product.title}"
    end
  end

  def destroy
    @cart_item = current_cart.cart_items.find_by(product_id: params[:id])
    @product = @cart_item.product
    @cart_item.destroy
    redirect_to cart_path, warning: "successfully remove #{@product.title} from the cart"
  end




  private

  def cart_item_params
    params.require(:cart_item).permit(:quantity)
  end
end
