class AddDetailsToInstructors < ActiveRecord::Migration[7.0]
  def change
    add_column :instructors, :first_name, :string
    add_column :instructors, :last_name, :string
    add_column :instructors, :phone_number, :string
  end
end

