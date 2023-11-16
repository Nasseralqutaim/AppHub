class User < ApplicationRecord
  has_secure_password
  has_many :user_apps
  has_many :apps, through: :user_apps
end

