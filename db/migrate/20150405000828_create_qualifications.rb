class CreateQualifications < ActiveRecord::Migration
  def change
    create_table :qualifications do |t|
      t.references :user, index: true
      t.string :name

      t.timestamps null: false
    end
    add_foreign_key :qualifications, :users
  end
end
