class RenameFavoitesToFavorites < ActiveRecord::Migration[5.1]
  def change
    rename_table :favoites, :favorites
  end
end
