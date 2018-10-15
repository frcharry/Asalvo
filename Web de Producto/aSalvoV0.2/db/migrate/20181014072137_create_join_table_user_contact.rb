class CreateJoinTableUserContact < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :contacts do |t|
      # t.index [:user_id, :contact_id]
      # t.index [:contact_id, :user_id]
    end
  end
end
