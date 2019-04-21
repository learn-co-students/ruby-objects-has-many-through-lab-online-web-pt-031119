class Genre
  attr_accessor :name 
  @@all = []
  
  def initialize (name)
    @name = name 
    @@all << self 
  end     #def 
  
  def self.all 
    @@all 
  end     #def 
  
  def songs 
    Song.all{|song| song.genre == self}
  end     #def 
  
  def artists 
    songs.map(&:artist)
  end     #def 
  
end 