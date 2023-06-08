class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.string :car_transmission
      t.string :time

      t.timestamps
    end
  end
end
