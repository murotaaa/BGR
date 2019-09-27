class Drop < ActiveRecord::Migration[5.2]
  def change
  	drop_table :balances
  	drop_table :repeat_more_interestings
  	drop_table :repeat_uninterestings
  	drop_table :abilities
  end
end
