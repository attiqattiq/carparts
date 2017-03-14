class CreateSupplies < ActiveRecord::Migration
  def change
    create_table :supplies do |t|
     
      t.references :supplier, index: true, foreign_key: true
      t.references :customer, index: true, foreign_key: true
      t.references :project, index: true, foreign_key: true
      t.references :part, index: true, foreign_key: true
      t.references :bill, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end



## t.integer :customer_id
  ##    t.integer :bill_id
      #t.integer :part_id
    ##  t.integer :supplier_id
      ##t.integer :pro_id
