class CreateBudgets < ActiveRecord::Migration[5.1]
  def change
    create_table :budgets do |t|
      t.string :customer_kind, limit: 1, null: false
      t.string :name, limit: 100, null: false
      t.string :email, limit: 100, null: false
      t.string :phone, limit: 20, null: false
      t.references :kind_event, foreign_key: true
      t.date :date_event
      t.integer :invited_number
      t.string :description

      t.timestamps
    end
  end
end
