class CreateSuppliers < ActiveRecord::Migration[5.1]
  def change
    create_table :suppliers do |t|
      t.string :name, limit: 100, null: false
      t.text :resume, null: false
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
