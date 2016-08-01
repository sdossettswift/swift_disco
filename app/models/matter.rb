class Matter < ApplicationRecord
  has_many :events
  TYPE = ['Divorce', 'Divorce w/ Kids', 'Modification', 'Enforcement', 'Adoption','CPS','Other SAPCR']
end
