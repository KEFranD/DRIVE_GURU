class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.datetime :starting_time
      t.datetime :end_time
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.references :instructor, null: false, foreign_key: true
    end
    # add_foreign_key :bookings, :users, column: :student_id
    # add_foreign_key :bookings, :users, column: :teacher
  end
end
