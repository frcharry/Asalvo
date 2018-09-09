class CreateEmergencia < ActiveRecord::Migration[5.2]
  def change
    create_table :emergencia do |t|
      t.integer :id_emergencia
      t.belongs_to :id_usuario, foreign_key: true
      t.string :tipo_emergencia
      t.datetime :created_at

      t.timestamps
    end
  end
end
