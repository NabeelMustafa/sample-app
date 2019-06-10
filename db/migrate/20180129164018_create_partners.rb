class CreatePartners < ActiveRecord::Migration[5.1]
  def change
    create_table :partners do |t|
      t.string :description, limit: 100, null: false
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
