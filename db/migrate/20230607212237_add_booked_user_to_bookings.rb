class AddBookedUserToBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :booked_user, null: false, foreign_key: { to_table: :users }
  end
end
