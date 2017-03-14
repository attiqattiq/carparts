class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.integer :status_id
      t.text :state
      t.string :remarks
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
