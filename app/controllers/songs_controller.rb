class SongsController < ApplicationController

  def index
    @playlist = Playlist.find(params[:playlist_id])
  end

  def new
    @music = RSpotify::Track.search(params[:search])
  end

end