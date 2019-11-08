json.data do
  json.paid @paid_charges do |charge|
    json.id               charge.id
    json.customer_name    charge.customer.name
    # json.currency         charge.currency
    # json.amount           charge.amount
    # json.created          charge.created
  end

  json.refunded @refunded_charges do |charge|
    json.id               charge.id
    json.customer_name    charge.customer.name
    # json.amount           charge.amount
    # json.currency         charge.currency
    # json.amount           charge.amount
    # json.created          charge.created
  end
end
