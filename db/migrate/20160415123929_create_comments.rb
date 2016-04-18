class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments, force: :cascade do |t|
      t.integer :user_id
      t.integer :link_id
      t.string  :title
      t.string  :content
      # t.references :user
      t.timestamps null: false
    end
  end
end
