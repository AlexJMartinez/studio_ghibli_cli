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
      puts "\nWelcome anime fans!\n".upcase
      sleep(0.5)
  end
    
   
  def list 
    puts "\nHere's a list of all Studio Ghibli films.\n"
    sleep(0.5)
   
     StudioGhibliCli::Film.all.each.with_index(1) do |film, i|
      puts "#{i}. #{film.title}"
      sleep(0.2)
    end
  end
  
  def film_details(input)
    
    film = StudioGhibliCli::Film.all[input.to_i - 1]
        
        sleep(0.25)
        puts "\n--------------------------------------\n"
        sleep(1)
        puts "\nTitle: #{film.title}\n"
        sleep(1)
        puts "\nDescription: #{film.description}\n"
        sleep(1)
        puts "\nDirector: #{film.director}\n"
        sleep(1)
        puts "\nRelease Date: #{film.release_date}\n"
        sleep(1)
        puts "\nRT Score: #{film.rt_score}\n"
        puts "\n--------------------------------------\n"
  end
  
  def menu
    input = nil
    
    while input != "exit"
      sleep(1)
      puts "\nInput a number from the list of films to view it's details.\n".yellow
      sleep(1)
      puts "\nType 'list' to view the full list again.\n".white
      sleep(1)
      puts "\nOr, if you'd like to exit, type 'exit'.\n".red
      input = gets.strip.downcase
      
      
      if input.to_i > 0 && input.to_i < StudioGhibliCli::Film.all.size
        film_details(input)
      elsif input == "list"
        list
      elsif input == "exit"
        goodbye
      else 
        puts "\nINVALID INPUT: type 'list' or 'exit'".red
      end 
    end
  end 
  
  
  def goodbye
    puts "thanks for checking out these studio ghibli films!".upcase
    sleep(2)
  end
    
     
end
