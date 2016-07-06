class RenameProjectsToContacts < ActiveRecord::Migration
  def change
    rename_table :projects, :contacts
  end
end
