class CreateTwoPCanEnjoys < ActiveRecord::Migration[5.2]
  def change
    create_table :two_p_can_enjoys do |t|
      t.integer :user_id
      t.integer :game_id

      t.timestamps
    end
  end
end
