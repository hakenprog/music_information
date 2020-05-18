class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :nombre
      t.date :fecha_lanz
      t.text :descripcion
      t.integer :num_canciones
      t.string :discografica
      t.references :album_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
