# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

customer_1 = Customer.create(first_name: 'Johny', last_name: 'Flow')
customer_2 = Customer.create(first_name: 'Raj', last_name: 'Jamnis')
customer_3 = Customer.create(first_name: 'Andrew', last_name: 'Chung')
customer_4 = Customer.create(first_name: 'Mike', last_name: 'Smith')

Charge.create(customer_id: customer_1.id, paid: true, amount: '%.2f' % (rand * (20-2) + 2), currency: "USD") # charge_1
Charge.create(customer_id: customer_1.id, paid: true, amount: '%.2f' % (rand * (20-2) + 2), currency: "USD") # charge_2
Charge.create(customer_id: customer_1.id, paid: true, amount: '%.2f' % (rand * (20-2) + 2), currency: "USD") # charge_3
Charge.create(customer_id: customer_1.id, paid: true, amount: '%.2f' % (rand * (20-2) + 2), currency: "USD") # charge_4
Charge.create(customer_id: customer_1.id, paid: true, amount: '%.2f' % (rand * (20-2) + 2), currency: "USD") # charge_5
Charge.create(customer_id: customer_2.id, paid: true, amount: '%.2f' % (rand * (20-2) + 2), currency: "USD") # charge_6
Charge.create(customer_id: customer_2.id, paid: true, amount: '%.2f' % (rand * (20-2) + 2), currency: "USD") # charge_7
Charge.create(customer_id: customer_2.id, paid: true, amount: '%.2f' % (rand * (20-2) + 2), currency: "USD") # charge_8
Charge.create(customer_id: customer_3.id, paid: true, amount: '%.2f' % (rand * (20-2) + 2), currency: "USD") # charge_9
Charge.create(customer_id: customer_4.id, paid: true, amount: '%.2f' % (rand * (20-2) + 2), currency: "USD") # charge_10

Charge.create(customer_id: customer_3.id, paid: true, amount: '%.2f' % (rand * (20-2) + 2), currency: "USD", refunded: true) # charge_11
Charge.create(customer_id: customer_3.id, paid: true, amount: '%.2f' % (rand * (20-2) + 2), currency: "USD", refunded: true) # charge_12
Charge.create(customer_id: customer_3.id, paid: true, amount: '%.2f' % (rand * (20-2) + 2), currency: "USD", refunded: true) # charge_13
Charge.create(customer_id: customer_4.id, paid: true, amount: '%.2f' % (rand * (20-2) + 2), currency: "USD", refunded: true) # charge_14
Charge.create(customer_id: customer_4.id, paid: true, amount: '%.2f' % (rand * (20-2) + 2), currency: "USD", refunded: true) # charge_15
