class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :contacto_nombre
      t.integer :contacto_cel
      t.string :contacto_mail

      t.timestamps
    end
  end
end
