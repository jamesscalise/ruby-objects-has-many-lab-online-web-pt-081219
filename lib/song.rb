require_relative "../lib/artist.rb"


class Song
  attr_accessor :name
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
end