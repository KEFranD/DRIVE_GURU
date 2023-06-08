class ChangeTimeDataTypeInBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :time, :string
    add_column :bookings, :time, :string
  end
end
