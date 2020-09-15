class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :genre_id, null: false
      t.string :name, null: false
      t.string :image_id
      t.text :introduction, null: false
      t.integer :price, null: false
      t.integer :is_sales_active, null: false, default: 0

      t.timestamps
    end
  end
end
