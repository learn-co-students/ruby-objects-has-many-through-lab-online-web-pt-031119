class Artist
    
    attr_accessor :name   

    @@all = []

    def initialize(name)
        @name = name  
        @@all << self
        @songs = []
        @genres = []
        #binding.pry 
    end 

    def self.all 
        @@all 
    end
    
    def new_song(name, genre) 
        new_song = Song.new(name, self, genre) 
        #@songs << new_song  # Dont' need this. This is being 
        new_song             # done in the joining model Song
    end                      # class model.

    def songs
        Song.all.select {|song| song.artist == self} 
    end 

    def genres 
        self.songs.collect {|song| song.genre}
    end 
    
    
    
    

end 

