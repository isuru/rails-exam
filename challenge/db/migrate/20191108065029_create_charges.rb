class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.integer :created
      t.boolean :paid,        null: false, default: false
      t.decimal :amount,      null: false, default: 0.0, precision: 6, scale: 2
      t.string :currency,     null: false, default: 'USD'
      t.boolean :refunded,    null: false, default: false
      t.integer :customer_id

      t.timestamps null: false
    end

    add_index :charges, :customer_id
    add_index :charges, :created
    add_index :charges, :refunded
  end
end
