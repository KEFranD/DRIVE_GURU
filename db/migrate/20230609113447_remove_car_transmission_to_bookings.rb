class RemoveCarTransmissionToBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :car_transmission
  end
end
