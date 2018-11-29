class RemoveFavouritedFromWorkshops < ActiveRecord::Migration[5.2]
  def change
    remove_column :workshops, :favourited, :boolean
  end
end
