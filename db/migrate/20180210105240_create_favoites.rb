class CreateFavoites < ActiveRecord::Migration[5.1]
  def change
    create_table :favoites do |t|
      t.integer :user_id
      t.integer :picture_id

      t.timestamps
    end
  end
end
