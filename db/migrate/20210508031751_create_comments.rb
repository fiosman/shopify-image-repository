class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :user_id, null: false
      t.integer :image_id, null: false
      t.text :body, null: false
      t.integer :rating, null: false, default: 1

      t.timestamps
    end

    add_index :comments, :user_id
    add_index :comments, :image_id
    add_index :comments, :rating
  end
end
