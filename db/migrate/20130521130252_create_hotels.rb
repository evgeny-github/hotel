class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :title
      t.integer :rating
      t.integer :breakfast_included
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
