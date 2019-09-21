class CreateStudies < ActiveRecord::Migration[5.2]
  def change
    create_table :studies do |t|
      t.integer :user_id
      t.integer :game_id

      t.timestamps
    end
  end
end
