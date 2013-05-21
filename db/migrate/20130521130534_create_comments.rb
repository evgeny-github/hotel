class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :hotel_id
      t.integer :star_rating
      t.string :user_comment

      t.timestamps
    end
  end
end
