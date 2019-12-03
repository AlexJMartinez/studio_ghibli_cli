class StudioGhibliCli::Film
  
  attr_accesor :title, :year, :genre, :director, :actors, :plot 
  
  @@all = []
  
  def initialize(title:, year:, genre:, director:, actors:, plot:)
    @title = title
    @year = year
    @genre = genre
    @director = director
    @actors = actors
    @plot = plot
    @@all << self
  end
  
  def self.all
    @@all
  end
end