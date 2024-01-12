class CreateTools < ActiveRecord::Migration[7.1]
  def change
    create_table :tools do |t|
      t.string :name
      t.text :description
      t.string :category
      t.boolean :is_available, default: true
      t.references :user, foreign_key: true

      t.timestamps
    end

    # add_index :tools, :user_id
  end
end
