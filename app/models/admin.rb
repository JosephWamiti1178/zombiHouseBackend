class Admin < ApplicationRecord
    validates :username, uniqueness: true, presence: true
    validates :fullname, presence: true
    validates :email, presence: true, uniqueness: true
    validates :contact, presence: true
    validates :password_digest, presence: true, length: { minimum: 8 }

    has_secure_password
end
