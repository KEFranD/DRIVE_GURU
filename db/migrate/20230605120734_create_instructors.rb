class CreateInstructors < ActiveRecord::Migration[7.0]
  def change
    create_table :instructors do |t|
      t.string :location
      t.string :car_transmission
      t.references :user, null: false, foreign_key: true
      t.text :description
      t.integer :rating

      t.timestamps
    end
  end
end
