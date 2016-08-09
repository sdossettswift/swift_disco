class Matter < ApplicationRecord
  has_many :users
  has_many :user_matters

  has_many :events
  has_many :documents
  has_many :people
  has_many :photos
  has_many :users, through: :roles
  has_many :roles
  validates :year, presence: true
  validates :cause_number, presence: true


  KIND = ['Divorce', 'Divorce w/ Kids', 'Modification', 'Enforcement', 'Adoption','CPS','Other SAPCR']
end
