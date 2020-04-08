class Artist
  attr_accessor :name, :genre, :song

 @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(song, self, genre)
  end


  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    Genre.all.select {|song| song.genre == song}
  end
end
