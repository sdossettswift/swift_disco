class Role < ApplicationRecord
  has_and_belongs_to_many :matter
  has_and_belongs_to_many :user
end
