require 'pry'

class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    #drake = Artist.create(name: "Drake")
    # drake.songs << self
    # self.artist
    drake = self.create_artist(:name => "Drake")
  end
end