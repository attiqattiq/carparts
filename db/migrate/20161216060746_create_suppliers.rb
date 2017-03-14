class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.integer :supplier_id
      t.string :supplier_name
      t.date :supply_date

      t.timestamps null: false
    end
  end
end
