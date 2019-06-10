class CreateGalleries < ActiveRecord::Migration[5.1]
  def change
    create_table :galleries do |t|
      t.string :title, limit: 100, null: false
      t.string :subtitle, limit: 100
      t.string :description
      t.string :photographer, limit: 50
      t.string :filter, limit: 1

      t.timestamps
    end
  end
end
