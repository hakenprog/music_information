class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :nombre
      t.text :descripcion
      t.integer :duracion_sec
      t.references :album, null: false, foreign_key: true

      t.timestamps
    end
  end
end
