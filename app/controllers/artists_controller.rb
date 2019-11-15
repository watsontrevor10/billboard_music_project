class ArtistsController < ApplicationController
  before_action :set_artist, except: [:index, :new, :create]

  def index
    @artists = Artist.all 
  end

  def show
  end

  def view
  end

  def new
    @artist = Artist.new 
    # render partial: "form"
  end

  def create

    if @artist.save 
      redirect_to artists_path
    else
      render :new
    end
  end

  def edit 
    #render partial: "form"
  end

  def update

    if @artist.update(artist_params)
      redirect_to artist_path(@artist)
    else
      render :edit
    end
  end

  def destroy
    @artist.destroy 
    redirect_to artists_path
  end

  private 

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params 
    params.require(:artist).permit(:artist_name, :artist_type, :avatar, :home_city, :home_state)
  end
end
