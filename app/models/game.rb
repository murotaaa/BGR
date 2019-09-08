class Game < ApplicationRecord
	has_many :watches, dependent: :destroy
	has_many :tags
	belongs_to :user
	attachment :image
end
