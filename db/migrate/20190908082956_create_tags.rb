class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.references :user, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true
      t.boolean :excellent, null: false, default: false
      t.boolean :good, null: false, default: false
      t.boolean :fair, null: false, default: false
      t.boolean :not_good, null: false, default: false
      t.boolean :bad, null: false, default: false
      t.boolean :for_kid, null: false, default: false
      t.boolean :for_teen, null: false, default: false
      t.boolean :for_woman, null: false, default: false
      t.boolean :for_man, null: false, default: false
      t.boolean :for_beginner, null: false, default: false
      t.boolean :for_geek, null: false, default: false
      t.boolean :carefully, null: false, default: false
      t.boolean :excitement, null: false, default: false
      t.boolean :two_p_can_enjoy, null: false, default: false
      t.boolean :drunk_can_enjoy, null: false, default: false
      t.boolean :for_singles_party, null: false, default: false
      t.boolean :with_friend_can_enjoy, null: false, default: false
      t.boolean :light_weight, null: false, default: false
      t.boolean :midlle_weight, null: false, default: false
      t.boolean :super_midlle_weight, null: false, default: false
      t.boolean :heavy_weight, null: false, default: false
      t.boolean :super_heavy_weight, null: false, default: false
      t.boolean :dice, null: false, default: false
      t.boolean :butting, null: false, default: false
      t.boolean :action, null: false, default: false
      t.boolean :tile_placement, null: false, default: false
      t.boolean :bluff, null: false, default: false
      t.boolean :hand_management, null: false, default: false
      t.boolean :set_collection, null: false, default: false
      t.boolean :expanded_reproduction, null: false, default: false
      t.boolean :worker_placement, null: false, default: false
      t.boolean :trick_taking, null: false, default: false
      t.boolean :partnership, null: false, default: false
      t.boolean :concealment, null: false, default: false
      t.boolean :drafting, null: false, default: false
      t.boolean :burst, null: false, default: false
      t.boolean :cooperration, null: false, default: false
      t.boolean :negotiation, null: false, default: false
      t.boolean :area_majority, null: false, default: false
      t.boolean :memory, null: false, default: false
      t.boolean :repeat, null: false, default: false
      t.boolean :study, null: false, default: false
      t.boolean :luck, null: false, default: false
      t.boolean :ability, null: false, default: false
      t.boolean :balance, null: false, default: false
      t.boolean :repeat_more_interesting, null: false, default: false
      t.boolean :repeat_not_interesting, null: false, default: false
      t.boolean :only_once, null: false, default: false
      t.boolean :long_waiting_time, null: false, default: false
      t.boolean :easy_rule, null: false, default: false
      t.boolean :easy_to_get, null: false, default: false
      t.boolean :many_expansion, null: false, default: false

      t.timestamps
    end
  end
end
