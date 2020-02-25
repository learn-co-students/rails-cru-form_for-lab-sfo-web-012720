class AddColumnsToSongs < ActiveRecord::Migration[5.0]
  def change
    add_column :songs, :name, :string
    add_reference :songs, :artist, foreign_key: true
    add_reference :songs, :genre, foreign_key: true
  end
end
