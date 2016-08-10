class Photo < ApplicationRecord
    attachment :photo, destroy: false
    belongs_to :matter
end
