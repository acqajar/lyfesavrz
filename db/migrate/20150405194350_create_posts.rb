class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.references :user, index: true
      t.string :category
      t.integer :rating

      t.timestamps null: false
    end
    add_foreign_key :posts, :users
  end
end
