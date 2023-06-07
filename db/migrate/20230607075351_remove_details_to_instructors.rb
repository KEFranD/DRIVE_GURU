class RemoveDetailsToInstructors < ActiveRecord::Migration[7.0]
  def change
    remove_column :instructors, :description, :text
    remove_column :instructors, :rating, :integer
  end
end
