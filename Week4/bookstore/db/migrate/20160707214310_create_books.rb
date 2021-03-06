class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :year
      t.text :description
      t.string :genre
      t.decimal :rating

      t.timestamps null: false
    end
  end
end
