class AddPhotoToWorkshops < ActiveRecord::Migration[5.2]
  def change
    add_column :workshops, :photo, :string
  end
end
