#!/usr/bin/env ruby

movies = {
  "Nausicaa of the Valley of the Wind": 5,
  "My Neighbor Totoro": 5,
  "Kiki's Delivery Service": 5,
  "Porco Rosso": 5,
}

puts movies

begin
  puts "What do you want to do (display, add, update, delete, or quit)? "
  choice = gets.chomp.downcase
  case choice
    when "add"
      puts "Title: "
      title = gets.chomp.to_sym
      puts "Rating: "
      rating = gets.chomp.to_i
      if movies[title].nil?
        movies[title] = rating
        puts "#{title} added!"
      else
        puts "#{title} already exists."
      end
    when "update"
      puts "Title: "
      title = gets.chomp.to_sym
      if movies[title].nil?
        puts "#{title} not found."
      else
        puts "New rating: "
        rating = gets.chomp.to_i
        movies[title] = rating
        puts "#{title} updated."
      end
    when "display"
      movies.each do |title, rating|
        puts "#{title}: #{rating}"
      end
    when "delete"
      puts "Title: "
      title = gets.chomp.to_sym
      if movies[title].nil?
        puts "#{title} not found."
      else
        movies.delete(title)
        puts "#{title} deleted."
      end
    else
      puts "Input not recognized. Please try again!"
  end
end until choice == "quit"

puts movies
