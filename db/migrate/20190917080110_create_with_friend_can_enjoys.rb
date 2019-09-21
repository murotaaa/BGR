class CreateWithFriendCanEnjoys < ActiveRecord::Migration[5.2]
  def change
    create_table :with_friend_can_enjoys do |t|
      t.integer :user_id
      t.integer :game_id

      t.timestamps
    end
  end
end
