class Person < ApplicationRecord
    include Gravtastic
    gravtastic
    belongs_to :matter
    has_many :users, through: :matters
end
