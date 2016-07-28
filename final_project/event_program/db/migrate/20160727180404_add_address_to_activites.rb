class AddAddressToActivites < ActiveRecord::Migration
  def change
  	    rename_column :activities, :location, :address

  end
end
