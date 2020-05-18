class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :nombre
      t.text :descripcion
      t.date :fecha_ini
      t.date :fecha_fin
      t.text :informacion
      t.references :location, null: false, foreign_key: true
      t.references :state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
