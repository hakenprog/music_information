class CreateGenreArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :genre_artists do |t|
      t.references :artist, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
