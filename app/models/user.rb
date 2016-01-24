class User < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true
  validates :email, presence: true

  has_many :playlists
  has_many :articles
  has_secure_password
end