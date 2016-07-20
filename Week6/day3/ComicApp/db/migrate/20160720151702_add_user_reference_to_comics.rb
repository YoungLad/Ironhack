class AddUserReferenceToComics < ActiveRecord::Migration
  def change
    add_reference :comics, :user, index: true, foreign_key: true
  end
end
