

class Song
  attr_accessor :name
  attr_reader :artist
  @@all = []
  def initialize(name)
    @name = name
    save
  end
  
  def artist(artist)
    artist.add_song(self)
  end
  
 # def artist=(artist)
 #   artist.add_song(self)
  #end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
end