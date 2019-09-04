require_relative "../lib/artist.rb"


class Song
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @artist = nil
    save
  end
  
  def artist
    @artist
  end
  
  def artist=(new_artist)
    @artist = new_artist
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