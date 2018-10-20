class CreateEntities < ActiveRecord::Migration[5.2]
  def change
    create_table :entities do |t|
      t.string :entidad_nombre
      t.string :entidad_representante
      t.integer :entidad_tel
      t.string :entidad_email
      t.string :entidad_dir
      t.string :password_digest

      t.timestamps
    end
  end
end
