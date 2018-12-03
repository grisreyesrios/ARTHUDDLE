class AddNumberToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :number, :integer
  end
end
