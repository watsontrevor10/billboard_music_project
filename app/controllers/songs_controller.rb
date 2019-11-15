class SongsController < ApplicationController
  before_action :set_artist
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = @artist.songs
    redirect_to artist_path(@artist)
  end

  def show
  end

  def view
  end

  def new
    @song = @artist.songs.new 
   # render partial: "form"
  end

  def create

    @song = @artist.songs.new(song_params)
    if @song.save 
      redirect_to artist_path(@artist)
    else
      render :new
    end
  end

  def edit 
    #render partial: "form"
  end

  def update

    if @song.update(song_params)
      redirect_to artist_path(@artist)
    else
      render :edit
    end
  end

  def destroy
    @song.destroy 
    redirect_to artist_path(@artist)
  end

  private 

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params 
    params.require(:song).permit(:song_name, :play_time, :genre, :lyrics, :date_released)
  end

end
