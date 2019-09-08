class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title, null: false
      t.string :original_title, null: false
      t.string :designer, null: false
      t.string :image_id, null: false
      t.string :release, null: false
      t.string :player, null: false
      t.string :age, null: false
      t.string :weight, null: false

      t.timestamps
    end
  end
end
