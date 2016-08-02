class Matter < ApplicationRecord
  has_many :events
  KIND = ['Divorce', 'Divorce w/ Kids', 'Modification', 'Enforcement', 'Adoption','CPS','Other SAPCR']
end
