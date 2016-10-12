class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :name, null: false
      t.integer :server_id, null: false

      t.timestamps
    end
    add_index :lists, :server_id
  end
end
