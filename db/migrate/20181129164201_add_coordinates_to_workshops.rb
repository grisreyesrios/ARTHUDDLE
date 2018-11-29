class AddCoordinatesToWorkshops < ActiveRecord::Migration[5.2]
  def change
    add_column :workshops, :latitude, :float
    add_column :workshops, :longitude, :float
  end
end
