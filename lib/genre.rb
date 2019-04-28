class Genre
  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|item| item == self.name}
  end

  def artists
  end

end
