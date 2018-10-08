class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :usuario_nombre
      t.string :usuario_apellido
      t.string :usuario_mail
      t.integer :usuario_cel
      t.string :usuario_sexo
      t.date :usuario_fechaNacimiento
      t.string :usuario_ubicacion
      t.string :password_digest

      t.timestamps
    end
    add_index :users, :usuario_mail, unique: true
  end
end
