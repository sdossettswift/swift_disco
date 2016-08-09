class User < ApplicationRecord
has_secure_password
has_many :user_matters
has_many :matters, through: :user_matters


include Gravtastic
gravtastic
attachment :profile_image, destroy: false
ROLE = ['Attorney', 'Client', 'Admin', 'Law Office']
validates :role, presence: true
validates :username, presence: true, uniqueness: true
validates :email, presence: true
validates :full_name, presence: true
validates :last_name, presence: true


end
