require 'pry'
class Artist 
  attr_accessor :name
  @@all = []
  
  def initialize(name) 
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_song(name, genre)
    # binding.pry
    song = Artist.new(name)
  end 
  
  # def songs 
  #   self.all.each {|artist| artist.songs}
  # end 

end 