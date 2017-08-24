class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.belongs_to :user
      t.string :title
      t.integer :width
      t.integer :height
      t.text :desc
      t.timestamps null: false
    end
  end
end
