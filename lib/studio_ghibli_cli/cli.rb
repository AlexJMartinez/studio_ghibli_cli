require 'pry'
require 'httparty'

class StudioGhibliCli::CLI 
  
  def start
    StudioGhibliCli::API.new.fetch
    StudioGhibliCli::Film.all.each do |film|
      puts film.title 
    end 
    menu
  end 
  
  def menu
    
  end
     
end
