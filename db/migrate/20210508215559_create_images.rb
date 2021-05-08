class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.text :body, null: false
      t.integer :user_id, null: false
      t.string :title, null: false

      t.timestamps
    end

    add_index :images, :user_id
  end
end
