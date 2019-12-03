require 'httparty'

class StudioGhibliCli::CLI 
  
  def start
    StudioGhibliCli::API.new.fetch
    StudioGhibliCli::Film.all.each do |film|
      puts Film.title 
    end 
  end 
    
     
end
