class Person < ApplicationRecord
  belongs_to :matter
  include Gravtastic
  gravtastic
end
