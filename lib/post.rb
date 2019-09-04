class Post
  attr_accessor :author, :title
  @@all = []
  def initialize(name)
    @title = name
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
end