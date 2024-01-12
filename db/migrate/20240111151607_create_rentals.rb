class CreateRentals < ActiveRecord::Migration[7.1]
  def change
    create_table :rentals do |t|
      t.references :user, foreign_key: true
      t.references :tool, foreign_key: true
      t.date :start_date
      t.date :end_date

      t.timestamps
    end

    # add_index :rentals, :user_id
    # add_index :rentals, :tool_id
  end
end
