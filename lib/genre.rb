require 'pry'
class Genre 
  attr_accessor :name, :artists
  @@all = []
  def initialize(name)
    @name = name 
    # @songs = []
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end
  
  def songs 
    Song.all.select do |song|
      # binding.pry
      song.genre
    end 
  end 
  
  def artists 
    Song.all.collect {|song| song.artist }
  end 
  
end 