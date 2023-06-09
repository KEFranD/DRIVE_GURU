class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :rating
      t.string :description
      t.references :booking, null: true, foreign_key: true

      t.timestamps
    end
  end
end
