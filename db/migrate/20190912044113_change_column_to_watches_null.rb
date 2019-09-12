class ChangeColumnToWatchesNull < ActiveRecord::Migration[5.2]
  def up
    change_column :watches, :user_id,:integer, null:true
    change_column :watches, :game_id,:integer, null:true
  end

  def down
  	change_column :watches, :user_id,:references, null:false
    change_column :watches, :game_id,:references, null:false
  end
end
