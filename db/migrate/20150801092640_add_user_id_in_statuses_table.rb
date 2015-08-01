class AddUserIdInStatusesTable < ActiveRecord::Migration
 
  def up
  	add_column :statuses,:user_id,:integer
  	remove_column :statuses,:user
  	add_index :statuses,:user_id
  end

  def down
  	add_column :statuses,:user,:string
  	remove_column :statuses,:user_id
  end

end
