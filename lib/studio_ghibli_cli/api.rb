require 'httparty'
require 'pry'

class StudioGhibliCli::API
  
  def fetch 
    url = "https://ghibliapi.herokuapp.com/films"
    response = HTTParty.get(url)
    # binding.pry
    
    # response["results"]["movies"].each do |film|
    #   title = film["title"]
    #   year = film["year"]
    #   genre = film["genre"]
    #   director = film["director"]
    #   actors = film["actors"]
    #   plot = film["plot"]
      
    #   StudioGhibliCli::Film.new(title, year, genre, director, actors, plot)
    
    # end
  end
  
  
end