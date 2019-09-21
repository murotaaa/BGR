class CreateTrickTakings < ActiveRecord::Migration[5.2]
  def change
    create_table :trick_takings do |t|
      t.integer :user_id
      t.integer :game_id

      t.timestamps
    end
  end
end
