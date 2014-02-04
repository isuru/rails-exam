class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.date :created
      t.boolean :paid
      t.decimal :amount
      t.string :currency
      t.boolean :refunded
      t.integer :customer_id

      t.timestamps
    end
  end
end
