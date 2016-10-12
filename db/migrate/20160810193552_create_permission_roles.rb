class CreatePermissionRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :permission_roles, id: false do |t|
      t.integer :role_id, null: false
      t.integer :permission_id, null: false
      t.timestamps
    end
    add_index :permission_roles, %w(role_id permission_id)
  end
end
