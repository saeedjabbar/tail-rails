class User < ApplicationRecord
    has_many :twitter_accounts
    has_many :tweets
    has_secure_password
    validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: 'Invalid email address' }
end
