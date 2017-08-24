class CreateFurnitures < ActiveRecord::Migration
  def change
    create_table :furnitures do |t|
      t.belongs_to :room
      t.string :name
      t.integer :width
      t.integer :height
      t.string :color
      t.string :shape
      t.integer :top
      t.integer :left
      t.timestamps null: false
    end
  end
end
