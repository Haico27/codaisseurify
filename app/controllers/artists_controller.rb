class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
  end

  def destroy
    @artist = Artist.find(params[:id])

    @artist.destroy

    redirect_to root_path
  end

  def sort_asc
    @artists = Artist.order(name: :asc)

    redirect_to artists_path(@artists)
  end

  def sort_desc
    @artists = Artist.order(name: :desc)

    redirect_to artists_path(@artists)
  end


end
