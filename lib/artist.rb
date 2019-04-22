class Artist
  attr_accessor :songs 
  attr_reader :name 
  
  @@all = []
  @@genres = []
  
  def initialize (name)
    @name = name 
    @@all << self 
  end 
  
  def new_song(name)
    Song.new(name, self)
  end 
  def songs 
     result = nil 
     songs.select { |i| i == name}
     result
  end 
  
  def genres
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
  
end 