require 'pry'
require 'httparty'

class StudioGhibliCli::CLI 
  
  def start
    StudioGhibliCli::API.new.fetch
    
    greeting
    list
    menu
  end 
    
  def greeting
      puts "\nWelcome anime fans!"
      sleep(0.5)
  end
    
   
  def list 
    puts "\nHere's a list of all Studio Ghibli films."
    sleep(0.5)
    
     StudioGhibliCli::Film.all.each do |film|
      puts film.title
      sleep(0.2)
    end
  end
  
  def menu
    
  end 
  
  
  def goodbye
    puts "Thanks for checking out these Studio Ghibli films!"
  end
    
     
end
