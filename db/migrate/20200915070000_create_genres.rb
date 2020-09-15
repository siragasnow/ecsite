class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.string :name, null: false
      t.integer :is_active, null: false, default: 0

      t.timestamps
    end
  end
end
