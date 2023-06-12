class RemoveCarTransmissionToInstructors < ActiveRecord::Migration[7.0]
  def change
    remove_column :instructors, :car_transmission
  end
end
