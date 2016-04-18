class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, force: :cascade do |t|
      t.string :name
      t.string :email
      t.string :password_hash
      # t.string :comments
      # t.string :links
      t.timestamps null: false
    end
  end
end
