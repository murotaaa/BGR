class CreateHeavyWeights < ActiveRecord::Migration[5.2]
  def change
    create_table :heavy_weights do |t|
      t.integer :user_id
      t.integer :game_id

      t.timestamps
    end
  end
end
