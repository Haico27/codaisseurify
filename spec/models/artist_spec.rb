require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "validations" do
    it "is invalid with a name longer than 50 characters" do
      artist = Artist.new(name: "This sentence is longer than fifty characters to test whether this validation is working properly.")
      artist.valid?
      expect(artist.errors).to have_key(:name)
    end
  end
end
