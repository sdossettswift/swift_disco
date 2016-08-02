class Person < ApplicationRecord
  has_many :matters, through: :roles
  has_many :roles
end
