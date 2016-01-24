class ArticlesController < ApplicationController
 before_action :get_playlist

  def get_playlist
   @plylist = Playlist.find(params[:article_id])
  end

  def show
   @article = @article.tweets.find(params[:id])
  end

  def create
   @tweet = @zombie.tweets.new(params[:tweet])
  if @tweet.save
   redirect_to [@zombie, @tweet]
  else
   render action: "new"
  end

  def index
   @tweets = @zombie.tweets
  end

  def new
    @playlist = Playlist.new
  end

  def edit
    @playlist = Playlist.find(params[:id])
  end

  def create
    @playlist = Playlist.new(playlist_params)
    if @playlist.save
      redirect_to playlists_path
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
    redirect_to playlists_path
  end

end