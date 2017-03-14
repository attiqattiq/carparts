class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :customer_id
      t.string :customer_name
      t.string :location
      t.integer :contact

      t.timestamps null: false
    end
  end
end
