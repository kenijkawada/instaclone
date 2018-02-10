class AddColumsToPictures < ActiveRecord::Migration[5.1]
  def change
    add_column :pictures, :content, :string
    add_column :pictures, :image, :text
    add_column :pictures, :user_id, :integer
  end
end
