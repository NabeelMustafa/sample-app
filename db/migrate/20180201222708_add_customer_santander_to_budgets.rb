class AddCustomerSantanderToBudgets < ActiveRecord::Migration[5.1]
  def change
    add_column :budgets, :customer_santander, :boolean, null: false
  end
end
