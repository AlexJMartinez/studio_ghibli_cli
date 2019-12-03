require 'pry'
require 'httparty'

class StudioGhibliCli::CLI 
  
  def start
    StudioGhibliCli::API.new.fetch
    StudioGhibliCli::Film.all.each do |film|
      puts film.title
      sleep(0.2)
    end 
    
    menu
    
  end 
  
  def list 
    
  end
  
  
  def goodbye
    puts "Thanks for checking out these Studio Ghibli films!"
  end
    
     
end
