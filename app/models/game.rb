class Game < ApplicationRecord
	has_many :watches, dependent: :destroy
	has_many :tags
	belongs_to :user
	attachment :image
	def watched_by?(user)
      watches.where(user_id: user.id).exists?
    end
end
