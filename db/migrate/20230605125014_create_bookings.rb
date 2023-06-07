class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.datetime :starting_time
      t.datetime :end_time
      t.date :date
      t.references :user, null: false, foreign_key: true
    end
  end
end
