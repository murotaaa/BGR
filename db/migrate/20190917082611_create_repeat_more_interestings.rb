class CreateRepeatMoreInterestings < ActiveRecord::Migration[5.2]
  def change
    create_table :repeat_more_interestings do |t|
      t.integer :user_id
      t.integer :game_id

      t.timestamps
    end
  end
end
