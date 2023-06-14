class RemoveDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :instructor
    remove_column :users, :location
    remove_column :users, :latitude
    remove_column :users, :longitude
  end
end
