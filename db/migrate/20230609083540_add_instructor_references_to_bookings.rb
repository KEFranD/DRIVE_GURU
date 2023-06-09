class AddInstructorReferencesToBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :booked_user_id, :int
    remove_column :bookings, :booker_id, :int
    add_reference :bookings, :instructor, null: false, foreign_key: true
  end
end
