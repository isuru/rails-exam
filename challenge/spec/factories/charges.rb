FactoryBot.define do
  factory :charge do
    created { 1 }
    paid { false }
    amount { "9.99" }
    currency { "MyString" }
    refund { false }
    customer_id { 1 }
  end
end
