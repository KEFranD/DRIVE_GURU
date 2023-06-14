class AddCarTypeToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :car_type, :string, array: true
  end
end
