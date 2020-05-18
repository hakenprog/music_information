class CreateStates < ActiveRecord::Migration[6.0]
  def change
    create_table :states do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
