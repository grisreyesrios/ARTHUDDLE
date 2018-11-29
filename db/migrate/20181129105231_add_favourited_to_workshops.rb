class AddFavouritedToWorkshops < ActiveRecord::Migration[5.2]
  def change
    add_column :workshops, :favourited, :boolean, default: false
  end
end
