class Song
  attr_accessor :name, :artist, :genre 
  
  @@all = []
  @@song 
  
   
   def initialize (name, artist, genre)
     @name = name
     @artist = artist
     @genre = genre
     @@all << self 
     
     
   end 
   
   def self.all
     
   end 
  
  
end 