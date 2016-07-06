class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :string
      t.string :address
      t.string :string
      t.string :phone
      t.string :integer
      t.string :email

      t.timestamps null: false
    end
  end
end
