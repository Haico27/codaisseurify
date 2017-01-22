class SongsController < ApplicationController
before_action :set_artist


  def index
  end

  def show
  end

  def new
  end

  def create
    @song = artist_id.songs.build(song_params)

    if @song.save
      redirect_to @song, notice: "Song added!"
    else
      puts "Test"
    end
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
