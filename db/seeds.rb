
# test_user
User.create(email: "test@gmail.com", password: "123456", password_confirmation: "123456", is_admin: false)

# admin_user
User.create(email: "admin@gmail.com", password: "123456", password_confirmation: "123456", is_admin: true)


#Faker for products
Product.destroy_all


10.times do |index|
  new_product = Product.create!(
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price,
    quantity: Faker::Number.between(1, 10),
    image: open('public/images/MensShoes1.jpg')
  )
end
