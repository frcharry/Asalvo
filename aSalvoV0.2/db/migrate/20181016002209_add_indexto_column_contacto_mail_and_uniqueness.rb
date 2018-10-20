class AddIndextoColumnContactoMailAndUniqueness < ActiveRecord::Migration[5.2]
  def change
    add_index :contacts, :contacto_mail, :unique=>true
  end
end
