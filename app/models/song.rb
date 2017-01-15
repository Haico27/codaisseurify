class Song < ApplicationRecord
  belongs_to :artist

  def self.order_by_album
    order(:album)
  end

end
