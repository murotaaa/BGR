class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :games
  has_many :watches, dependent: :destroy
  has_many :excellents
  has_many :goods
  has_many :fairs
  has_many :ungoods
  has_many :bads
  has_many :for_kids
  has_many :for_teens
  has_many :for_women
  has_many :for_men
  has_many :for_beginners
  has_many :for_geeks
  has_many :carefullies
  has_many :excitements
  has_many :two_p_can_enjoys
  has_many :drunk_can_enjoys
  has_many :for_singles_parties
  has_many :with_friend_can_enjoys
  has_many :light_weights
  has_many :midlle_weights
  has_many :super_midlle_weights
  has_many :heavy_weights
  has_many :super_heavy_weights
  has_many :dices
  has_many :buttings
  has_many :actions
  has_many :tile_placements
  has_many :bluffs
  has_many :hand_managements
  has_many :set_collections
  has_many :expanded_reproductions
  has_many :worker_placements
  has_many :trick_takings
  has_many :partnerships
  has_many :concealments
  has_many :draftings
  has_many :bursts
  has_many :cooperations
  has_many :negotiations
  has_many :area_majorities
  has_many :memories
  has_many :repeats
  has_many :studies
  has_many :lucks
  has_many :forces
  has_many :only_onces
  has_many :long_waiting_times
  has_many :easy_rules
  has_many :easy_to_gets
  has_many :many_expansions
end
