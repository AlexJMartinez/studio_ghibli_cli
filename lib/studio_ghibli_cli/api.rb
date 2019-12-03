require 'httparty'
require 'pry'

class StudioGhibliCli::API
  
  def fetch 
    url = "https://ghibliapi.herokuapp.com/films"
    response = HTTParty.get(url)
    
    response.each do |film|
      
      title = film["title"]
      description = film["description"]
      director = film["director"]
      release_date = film["release_date"]
      rt_score = film["rt_score"]
      
    StudioGhibliCli::Film.new(title, description, director, release_date, rt_score)
     end
  end
end