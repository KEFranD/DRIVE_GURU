class AddCoordinatesToInstructors < ActiveRecord::Migration[7.0]
  def change
    add_column :instructors, :latitude, :float
    add_column :instructors, :longitude, :float
  end
end
