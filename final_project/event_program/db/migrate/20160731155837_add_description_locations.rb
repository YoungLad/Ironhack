class AddDescriptionLocations < ActiveRecord::Migration
  def change
  	add_column :locations, :info, :string
  end
end
