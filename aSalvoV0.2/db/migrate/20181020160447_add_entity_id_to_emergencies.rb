class AddEntityIdToEmergencies < ActiveRecord::Migration[5.2]
  def change
    add_reference :emergencies, :entity, foreign_key: true
  end
end
