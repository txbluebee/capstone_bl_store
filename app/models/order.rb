class Order < ApplicationRecord
  belongs_to :user
  has_many :product_lists

  validates_presence_of :billing_name, :billing_address, :shipping_name, :shipping_address

  def set_payment_with!(method)
    self.update_columns(payment_method: method)
  end

  def pay!
    self.update_columns(is_paid:true)
  end  
end
