class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.integer :bill_id
      t.integer :amount
      t.date :bill_date

      t.timestamps null: false
    end
  end
end
