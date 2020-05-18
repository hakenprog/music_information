class CreateProvinces < ActiveRecord::Migration[6.0]
  def change
    create_table :provinces do |t|
      t.string :nombre
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
