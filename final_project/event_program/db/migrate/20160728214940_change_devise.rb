class ChangeDevise < ActiveRecord::Migration
  def change
  	remove_column :activities, :price
  end
end
