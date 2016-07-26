class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.integer :distance
      t.string :location
      t.integer :price

      t.timestamps null: false
    end
  end
end
