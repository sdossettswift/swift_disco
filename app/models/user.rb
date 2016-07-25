class User < ApplicationRecord
has_secure_password
has_one :profile
# has_many :people through :universe
# has_many :events through :universe
# has_many :documents through :universe
end
