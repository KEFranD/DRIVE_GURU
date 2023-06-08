class AddBookerToBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :booker, null: false, foreign_key: { to_table: :users }
  end
end
