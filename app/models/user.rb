class User < ApplicationRecord
has_secure_password
has_one :profile
has_many :matters, through: :roless
has_many :roles
has_many :usermatters
attachment :profile_image, destroy: false
ROLE = ['Attorney', 'Client', 'Admin', 'Law Office']

end
