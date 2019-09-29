class Game < ApplicationRecord
	has_many :watches, dependent: :destroy
	belongs_to :user
	attachment :image

  validates :title, presence: true
  validates :original_title, presence: true
  validates :designer, presence: true
  validates :release, presence: true
  validates :player, presence: true
  validates :age, presence: true
  validates :weight, presence: true

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

	def watched_by?(user)
      watches.where(user_id: user.id).exists?
    end
    def excellented_by?(user)
      excellents.where(user_id: user.id).exists?
    end
    def gooded_by?(user)
      goods.where(user_id: user.id).exists?
    end
    def faired_by?(user)
      fairs.where(user_id: user.id).exists?
    end
    def ungooded_by?(user)
      ungoods.where(user_id: user.id).exists?
    end
    def baded_by?(user)
      bads.where(user_id: user.id).exists?
    end
    def for_kided_by?(user)
      for_kids.where(user_id: user.id).exists?
    end
    def for_teened_by?(user)
      for_teens.where(user_id: user.id).exists?
    end
    def for_womaned_by?(user)
      for_women.where(user_id: user.id).exists?
    end
    def for_maned_by?(user)
      for_men.where(user_id: user.id).exists?
    end
    def for_beginnered_by?(user)
      for_beginners.where(user_id: user.id).exists?
    end
    def for_geeked_by?(user)
      for_geeks.where(user_id: user.id).exists?
    end
    def carefullied_by?(user)
      carefullies.where(user_id: user.id).exists?
    end
    def excitemented_by?(user)
      excitements.where(user_id: user.id).exists?
    end
    def two_p_can_enjoyed_by?(user)
      two_p_can_enjoys.where(user_id: user.id).exists?
    end
    def drunk_can_enjoyed_by?(user)
      drunk_can_enjoys.where(user_id: user.id).exists?
    end
    def for_singles_partied_by?(user)
      for_singles_parties.where(user_id: user.id).exists?
    end
    def with_friend_can_enjoyed_by?(user)
      with_friend_can_enjoys.where(user_id: user.id).exists?
    end
    def light_weighted_by?(user)
      light_weights.where(user_id: user.id).exists?
    end
    def midlle_weighted_by?(user)
      midlle_weights.where(user_id: user.id).exists?
    end
    def super_midlle_weighted_by?(user)
      super_midlle_weights.where(user_id: user.id).exists?
    end
    def heavy_weighted_by?(user)
      heavy_weights.where(user_id: user.id).exists?
    end
    def super_heavy_weighted_by?(user)
      super_heavy_weights.where(user_id: user.id).exists?
    end
    def diced_by?(user)
      dices.where(user_id: user.id).exists?
    end
    def buttinged_by?(user)
      buttings.where(user_id: user.id).exists?
    end
    def actioned_by?(user)
      actions.where(user_id: user.id).exists?
    end
    def tile_placemented_by?(user)
      tile_placements.where(user_id: user.id).exists?
    end
    def bluffed_by?(user)
      bluffs.where(user_id: user.id).exists?
    end
    def hand_managemented_by?(user)
      hand_managements.where(user_id: user.id).exists?
    end
    def set_collectioned_by?(user)
      set_collections.where(user_id: user.id).exists?
    end
    def expanded_reproductioned_by?(user)
      expanded_reproductions.where(user_id: user.id).exists?
    end
    def worker_placemented_by?(user)
      worker_placements.where(user_id: user.id).exists?
    end
    def trick_takinged_by?(user)
      trick_takings.where(user_id: user.id).exists?
    end
    def partnershiped_by?(user)
      partnerships.where(user_id: user.id).exists?
    end
    def concealmented_by?(user)
      concealments.where(user_id: user.id).exists?
    end
    def draftinged_by?(user)
      draftings.where(user_id: user.id).exists?
    end
    def bursted_by?(user)
      bursts.where(user_id: user.id).exists?
    end
    def cooperationed_by?(user)
      cooperations.where(user_id: user.id).exists?
    end
    def negotiationed_by?(user)
      negotiations.where(user_id: user.id).exists?
    end
    def area_majoritied_by?(user)
      area_majorities.where(user_id: user.id).exists?
    end
    def memoried_by?(user)
      memories.where(user_id: user.id).exists?
    end
    def repeated_by?(user)
      repeats.where(user_id: user.id).exists?
    end
    def studied_by?(user)
      studies.where(user_id: user.id).exists?
    end
    def lucked_by?(user)
      lucks.where(user_id: user.id).exists?
    end
    def forced_by?(user)
      forces.where(user_id: user.id).exists?
    end
    def only_onced_by?(user)
      only_onces.where(user_id: user.id).exists?
    end
    def long_waiting_timed_by?(user)
      long_waiting_times.where(user_id: user.id).exists?
    end
    def easy_ruled_by?(user)
      easy_rules.where(user_id: user.id).exists?
    end
    def easy_to_geted_by?(user)
      easy_to_gets.where(user_id: user.id).exists?
    end
    def many_expansioned_by?(user)
      many_expansions.where(user_id: user.id).exists?
    end
end
