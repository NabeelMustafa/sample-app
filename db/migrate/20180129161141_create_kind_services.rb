class CreateKindServices < ActiveRecord::Migration[5.1]
  def change
    create_table :kind_services do |t|
      t.string :description, limit: 100, null: false

      t.timestamps
    end
  end
end
