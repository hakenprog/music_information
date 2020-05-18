class CreateGenreAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :genre_albums do |t|
      t.references :genre, null: false, foreign_key: true
      t.references :album, null: false, foreign_key: true

      t.timestamps
    end
  end
end
