class UserMatter < ApplicationRecord
  belongs_to :user
  belongs_to :matter
end
