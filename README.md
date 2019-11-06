HOW to deploy.

run bundle install

# Rails Programming Task

### In order to be considered for a rails position, you must complete the following steps.
*Note: This task should take no longer than 1-2 hours at the most to complete.*

### Prerequisites

- Please note that this will require some basic [Ruby on Rails](http://rubyonrails.org/) and [RSpec](http://rspec.info/) knowledge. 

- You will need to have [Ruby on Rails](http://www.rubyonrails.org/) installed to complete this task. 

## Task

- Fork this repository (if you don't know how to do that, Google is your friend)
- Create directory challenge
- In the *challenge* directory, scaffold a simple Rails 4 web app that models a credit card charge. JSON data structure below: 

```
  {
    "id": 9923,
    "created": 1389618241,
    "paid": true,
    "amount": 4900,
    "currency": "usd",
    "refunded": false,
    "customer_id" : 123
  }
```

    *Note: Amount is in USD, cents*

- Also scaffold a customer object which only has a first and last name. 

*The charge object has a customer property, this property is the customer id from the customer model.*

##### Seed 4 Customers into the system
    Customer 1: 
      First Name: Johny 
      Last Name: Flow

    Customer 2: 
      First Name: Raj
      Last Name: Jamnis

    Customer 3: 
      First Name: Andrew
      Last Name: Chung

    Customer 4: 
      First Name: Mike
      Last Name: Smith

  
##### Seed 20 charges (charges) into the system

    10 Should be paid charges:
      - 5 Should be linked to Customer 1
      - 3 Should be linked to Customer 2
      - 1 Should be linked to Customer 3
      - 1 Should be linked to Customer 4
    
    5 Should be charges that refunded:
      - 3 Should be linked to Customer 3
      - 2 Should be linked to Customer 4



##### Create a json of Different charges
On the controller that shows all charges (most likely the *GET /charges* route), return a json list as follows. 

"data": {
  "paid": [
    {
      "id": 111,
      "customer_name": 'customer 1'
    }
  ],
  "refunded": [
    {
      "id": 111,
      "customer_name": 'customer 2'
    }
  ]
}

### Tests - OPTIONAL

Create the following RSpec tests:

  1.  Verify that in the Paid charges list there are 10 line items. Verify that in the refunded charges list there are 5 failed charges.

## Once Complete
1. Commit and Push your code to your new repository
2. Send us a pull request, we will review your code and get back to you






