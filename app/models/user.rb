class User < ApplicationRecord
has_secure_password
has_many :matters
has_many :roles
has_many :usermatters
attachment :profile_image, destroy: false
ROLE = ['Attorney', 'Client', 'Admin', 'Law Office']


end
