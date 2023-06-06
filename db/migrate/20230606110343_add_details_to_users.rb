class AddDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :teacher_role, :boolean
    add_column :users, :car_transmission, :string
    add_column :users, :location, :string
  end
end
