require_relative "../lib/artist.rb"


class Song
  attr_accessor :artist
  attr_reader :artist
  @@all = []
  def initialize(name)
    @name = name
    save
  end
  
  def artist(artist)
   @artist = artist
  end
  
  def artist=(artist)
    @artist = artist
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    @artist.name
  end
end