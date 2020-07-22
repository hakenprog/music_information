class CreateAlbumArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :albums_artists do |t|
      t.references :artist_id, null: false, foreign_key: true
      t.references :album_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
