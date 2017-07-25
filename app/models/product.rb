class Product < ApplicationRecord
  has_many :cart_items, dependent: :destroy
  validates_presence_of :title, :description, :price
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
