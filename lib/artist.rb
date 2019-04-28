class Artist
@@all = []

def initialize(name)
  @name = name
end

def self.all
  @@all
end

def new_song(name, genre)
  song = Song.new(name, self, genre)
  # song.artist = self
end

def songs
end

def genres

end



end
