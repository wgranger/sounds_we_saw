class Song < ActiveRecord::Base
  has_many :articles
  has_many :tracklists
  has_many :playlists, through: :tracklists
  after_initialize :init

  def init
    self.title ||= "unknown"
    self.artist ||= "unknown"
    self.album ||= "unknown"
  end

end