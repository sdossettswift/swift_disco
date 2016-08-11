class User < ApplicationRecord
    include Gravtastic

    has_secure_password
    has_many :user_matters
    has_many :matters, through: :user_matters
    has_many :documents, through: :matters
    has_many :people, through: :matters
    has_many :events, through: :matters
    has_many :photos, through: :matters

    scope :by_role, -> (role_name) { where(role: role_name) }

    gravtastic
    attachment :profile_image, destroy: false
    ROLE = ['Attorney', 'Client', 'Law Office'].freeze
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
end
