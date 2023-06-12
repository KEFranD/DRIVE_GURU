class ChangeCarTransmissionToInstructors < ActiveRecord::Migration[7.0]
  def change
    add_column :instructors, :car_type, :string, array: true, default: []
  end
end
