class User < ApplicationRecord
  has_many :user_events
  has_many :events, through: :user_events
  has_secure_password
  validates :email, uniqueness: true
  validates :email, presence: true

end
