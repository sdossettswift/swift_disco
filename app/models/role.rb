class Role < ApplicationRecord
  belongs_to :matter
  belongs_to :user
end
