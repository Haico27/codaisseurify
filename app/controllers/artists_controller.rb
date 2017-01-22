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

  def order_by_name
    @ascending = Artist.order(name: :asc)
    @descending = Artist.order(name: :desc)
  end


end
