class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido
      t.string :gender
      t.string :email
      t.integer :telefono
      t.string :direccion
      t.date :cumpleaños

      t.timestamps
    end
  end
end
