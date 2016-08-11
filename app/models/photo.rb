class Photo < ApplicationRecord
    attachment :photo, destroy: false
    belongs_to :matter
    has_many :users, through: :matters
end
