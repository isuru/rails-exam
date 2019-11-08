FactoryBot.define do
  factory :charge do
    created { 1 }
    paid { false }
    amount { "9.99" }
    currency { "MyString" }
    refund { false }
    customer_id { 1 }
  end

  factory :paid_charge do
    created { Time.new.to_i }
    paid { true }
    amount { "9.99" }
    currency { "USD" }
    refund { false }
    sequence(:customer_id) {|n| n }
  end

  factory :refunded_charge do
    created { Time.new.to_i }
    paid { true }
    amount { "9.99" }
    currency { "USD" }
    refund { true }
    sequence(:customer_id) {|n| n }
  end
end
