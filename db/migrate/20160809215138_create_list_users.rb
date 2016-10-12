class CreateListUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :list_users do |t|
      t.integer :user_id, null: false
      t.integer :list_id, null: false
      t.integer :role_id, null: false
      t.integer :position, null: false
      t.timestamps
    end
    add_index :list_users, %w(user_id list_id)
    add_index :list_users, :role_id
  end
end
