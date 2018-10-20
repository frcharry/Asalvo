class AddUserIdToEmergencies < ActiveRecord::Migration[5.2]
  def change
    add_reference :emergencies, :user, foreign_key: true
  end
end
