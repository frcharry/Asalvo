class AddColumNitToEntityandaddIndexandUniqness < ActiveRecord::Migration[5.2]
  def change
    add_column :entities, :nit, :string
    add_index :entities, :nit, :unique=>true
  end
end
