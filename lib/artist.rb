class Artist
  attr_accessor :name
  # , :songs
@@all = []

def initialize(name)
  @name = name
  # @songs = []
  @@all.push(self)

end

def self.all
  @@all
end

def new_song(name, genre)
  song = Song.new(name, self, genre)
  # @songs.push(song)
  # song.artist = self
end

def songs
  Song.all.select {|item| item.artist == self}
end

def genres
  # @songs.each do |song|
  #   song.genre
  Song.all.map do |item|
    if item.artist == self
    item.genre
  end
end
end



end
