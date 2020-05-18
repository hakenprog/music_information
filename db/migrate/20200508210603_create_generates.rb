class CreateGenerates < ActiveRecord::Migration[6.0]
  def change
    create_table :generates do |t|
      t.string :song
      t.string :nombre
      t.string :descripcion
      t.string :duracion_sec
      t.string :album_id

      t.timestamps
    end
  end
end
