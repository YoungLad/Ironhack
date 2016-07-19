class CreateSandwhichIngredients < ActiveRecord::Migration
  def change
    create_table :sandwhich_ingredients do |t|

    	t.integer :sandwhich_id
    	t.integer :ingredient_id
    	
      t.timestamps null: false
    end
  end
end
