require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "validations" do
    it "is invalid with a name longer than 50 characters" do
      artist = Artist.new(name: "This sentence is longer than fifty characters to test whether this validation is working properly.")
      artist.valid?
      expect(artist.errors).to have_key(:name)
    end
  end


describe "association with song" do
  let (:artist) { create :artist }
  let!(:song) { create :song, artist: artist }

  it "has many songs" do
    song1 = artist.songs.new(name: "Punk Rock Song")
    song2 = artist.songs.new(name: "Invincible")

    expect(artist.songs).to include(song1)
    expect(artist.songs).to include(song2)
  end

  it "deletes associated songs" do
    expect { artist.destroy }.to change(Song, :count).by(-1)
  end
end

end
