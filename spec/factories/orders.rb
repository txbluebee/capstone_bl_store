FactoryGirl.define do
  factory :order do
    total 1
    billing_name "MyString"
    billing_address "MyString"
    shipping_name "MyString"
    shipping_address "MyString"
    user nil
  end
end
