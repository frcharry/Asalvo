class CreateEmergencies < ActiveRecord::Migration[5.2]
  def change
    create_table :emergencies do |t|
      t.datetime :emergencia_fecha
      t.string :emergencia_ubicacion
      t.string :emergencia_data

      t.timestamps
    end
  end
end
