class ChangeColumnToGameNull < ActiveRecord::Migration[5.2]
  def up
    change_column :games, :title,:string, null: true
    change_column :games, :original_title,:string, null: true
    change_column :games, :designer,:string, null: true
    change_column :games, :image_id,:string, null: true
    change_column :games, :release,:string, null: true
    change_column :games, :player,:string, null: true
    change_column :games, :age,:string, null: true
    change_column :games, :weight,:string, null: true
  end

  def down
    change_column :games, :title,:string, null: false
    change_column :games, :original_title,:string, null: false
    change_column :games, :designer,:string, null: false
    change_column :games, :image_id,:string, null: false
    change_column :games, :release,:string, null: false
    change_column :games, :player,:string, null: false
    change_column :games, :age,:string, null: false
    change_column :games, :weight,:string, null: false
  end
end
