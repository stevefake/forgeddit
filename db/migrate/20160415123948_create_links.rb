class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links, force: :cascade do |t|
      t.integer :user_id
      t.string :post
      t.string :description
      t.string :subject
      # t.references :user
      t.timestamps null: false
    end
  end
end
