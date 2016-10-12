class CreateSpawns < ActiveRecord::Migration[5.0]
  def change
    create_table :spawns do |t|
      t.integer :list_id, null: false
      t.integer :mob_id, null: false
      t.boolean :renewal, null: false, default: true
      t.integer :respawn_time, null: false
      t.integer :last_kill_time, null: true
      t.integer :killed_by_user_id, null: true
      t.timestamps
    end
    add_index :spawns, :list_id
    add_index :spawns, :mob_id
    add_index :spawns, :killed_by_user_id
  end
end
