class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name, limit: 100, null: false
      t.string :email, limit: 100, null: false
      t.text :message

      t.timestamps
    end
  end
end
