class Playlist < ActiveRecord::Base
  validates :title, presence: true

  belongs_to :user
  has_many :tracklists
  has_many :songs, through: :tracklists
end