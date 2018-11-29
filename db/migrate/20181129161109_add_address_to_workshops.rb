class AddAddressToWorkshops < ActiveRecord::Migration[5.2]
  def change
    add_column :workshops, :address, :string
  end
end
