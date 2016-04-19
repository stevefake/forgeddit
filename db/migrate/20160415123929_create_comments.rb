class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments, force: :cascade do |t|
      t.integer :user_id
      # t.integer :link_id
      t.belongs_to :link, index: true
      t.string  :title
      t.text  :content
      # t.references :user
      t.timestamps null: false
    end
  end
end
