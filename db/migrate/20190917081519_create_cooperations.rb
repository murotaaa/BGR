class CreateCooperations < ActiveRecord::Migration[5.2]
  def change
    create_table :cooperations do |t|
      t.integer :user_id
      t.integer :game_id

      t.timestamps
    end
  end
end
