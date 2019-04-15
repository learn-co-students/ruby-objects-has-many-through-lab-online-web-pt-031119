require "pry"
class Genre
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end
  
  def artists
    #binding.pry
    songs.map do |song|
      #binding.pry
    song.artist
    
    end
  end
      
  
end
  