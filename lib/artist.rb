require "pry"

class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs  = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def genres
    self.songs.map {|i| i.genre}
  end

# binding.pry
end
