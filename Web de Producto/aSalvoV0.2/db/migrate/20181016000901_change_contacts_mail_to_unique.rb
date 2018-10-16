class ChangeContactsMailToUnique < ActiveRecord::Migration[5.2]
  def change
    change_column_null :contacts, :contacto_mail, false
  end
end
