class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :username, null: false
      t.string :email, null: false

      t.string :title, null: false
      t.string :pageUrl, null: false
      t.string :specFileUrl, null: false

      t.timestamps null: false
    end

    add_index :tests, :email
    add_index :tests, :username
    add_index :tests, :title, unique: true
  end
end
