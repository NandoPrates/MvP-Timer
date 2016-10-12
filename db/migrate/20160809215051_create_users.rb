class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users, id: false do |t|
      t.integer :id, primary_key: true # Non AutoIncrement - Facebook ID
      t.string :fb_name, null: false
      t.string :fb_user, null: false
      t.string :fb_email, null: false
      t.string :fb_token, null: true
      t.integer :gmt, limit: 2, null: false
      t.boolean :active, default: true
      t.timestamps
    end
  end
end
