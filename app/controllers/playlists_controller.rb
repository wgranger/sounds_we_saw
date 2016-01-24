class PlaylistsController < ApplicationController

  def show
    @playlist = Playlist.find(params[:id])
  end

  def new
    @user = User.find(session[:user_id])
    @spotify_user = session[:spotify_user]
    @playlist = Playlist.new
  end

  def edit
    @playlist = Playlist.find(params[:id])
  end

  def create
    @playlist = Playlist.new(playlist_params)
    if @playlist.save
      @playlist.update_attributes(user_id: session[:user_id])
      redirect_to root_path
    else
      redirect_to '/playlist'
    end
  end

  def update
    @playlist = Playlist.find(params[:id])
    if @playlist.update(playlist_params)
      redirect_to @playlist
    else
      render 'edit'
    end
  end

  def destroy
    @playlist = Playlist.find(params[:id])
    @playlist.destroy
    redirect_to root_path
  end

  private
  def playlist_params
    params.require(:playlist).permit(:title)
  end

end