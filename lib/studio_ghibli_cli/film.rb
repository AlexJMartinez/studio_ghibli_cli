class StudioGhibliCli::Film
  
  attr_accessor :title, :description, :director, :release_date, :rt_score
  
  @@all = []
  
  def initialize(title:, description:, director:, release_date:, rt_score:)
    @title = title
    @description = description
    @director = director
    @release_date = release_date
    @rt_score = rt_score
    
    @@all << self
  end
  
  def self.all
    @@all
  end
end