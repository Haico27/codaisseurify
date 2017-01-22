class SongsController < ApplicationController
before_action :set_artist


  def index
  end

  def show
  end

  def new
  end

  def create
    @song = @artist.songs.build(song_params)

    @song.save
    redirect_to artist_path(@artist), notice: "Song added!"
  end

  def destroy
    @song = Song.find(params[:id])

    @song.destroy

    redirect_to artist_path(@artist)
  end

    private

    def set_artist
      @artist = Artist.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:name, :artist_id)
    end
end
