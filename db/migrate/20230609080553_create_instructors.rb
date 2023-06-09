class CreateInstructors < ActiveRecord::Migration[7.0]
  def change
    create_table :instructors do |t|
      t.string :company_name
      t.string :car_transmission
      t.integer :work_phone_number
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
