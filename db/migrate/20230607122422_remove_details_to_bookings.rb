class RemoveDetailsToBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :starting_time, :datetime
    remove_column :bookings, :end_time, :datetime
  end
end
