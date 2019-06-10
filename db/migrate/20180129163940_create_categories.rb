class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :description, limit: 100, null: false

      t.timestamps
    end
  end
end
