class App < ApplicationRecord
  has_many :user_apps 
  has_many :users, through: :user_apps 
  validates :shape, presence: true
end