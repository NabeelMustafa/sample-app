class CreateInfrastructures < ActiveRecord::Migration[5.1]
  def change
    create_table :infrastructures do |t|
      t.string :title, limit: 25, null: false
      t.string :subtitle, limit: 70, null: false
      t.boolean :differential

      t.timestamps
    end
  end
end
