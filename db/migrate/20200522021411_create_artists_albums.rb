class CreateArtistsAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :artists_albums do |t|
      t.references :artist_id, null: false, foreign_key: true
      t.references :album_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
