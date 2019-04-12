require 'pry'

class Genre
  attr_accessor :name, :songs, :artists
  @@all = []

  def initialize(name)
    @name = name
    @artists = []
    @@all << self

  end 

  def songs
    Song.all

  end

  def self.all
    @@all
  end

  def artists
    Artist.all

  end
  
end