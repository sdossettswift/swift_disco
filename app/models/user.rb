class User < ApplicationRecord
has_secure_password
has_and_belongs_to_many :matters
has_and_belongs_to_many :roles
has_many :usermatters
attachment :profile_image, destroy: false
ROLE = ['Attorney', 'Client', 'Admin', 'Law Office']
validates :role, presence: true
validates :username, presence: true, uniqueness: true
validates :email, presence: true
validates :full_name, presence: true
validates :last_name, presence: true


end
