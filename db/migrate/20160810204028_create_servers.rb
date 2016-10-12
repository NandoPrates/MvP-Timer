class CreateServers < ActiveRecord::Migration[5.0]
  def change
    create_table :servers do |t|
      t.string :name, null: false
      t.boolean :official, null: false

      t.timestamps
    end
  end
end
