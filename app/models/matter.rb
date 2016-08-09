class Matter < ApplicationRecord

  has_and_belongs_to_many :user_matters
  has_many :users, through: :user_matters

  has_many :events
  has_many :documents
  has_many :people
  has_many :photos

  validates :year, presence: true
  validates :cause_number, presence: true


  KIND = ['Divorce', 'Divorce w/ Kids', 'Modification', 'Enforcement', 'Adoption','CPS','Other SAPCR']
end
