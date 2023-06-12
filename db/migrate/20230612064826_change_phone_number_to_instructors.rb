class ChangePhoneNumberToInstructors < ActiveRecord::Migration[7.0]
  def change
    change_column :instructors, :work_phone_number, :string
  end
end
