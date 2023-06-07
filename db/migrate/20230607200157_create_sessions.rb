class CreateSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :sessions do |t|
      t.string :car_transmission
      t.string :time

      t.timestamps
    end
  end
end
