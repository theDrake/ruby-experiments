#!/usr/bin/env ruby

print "Input: "
user_input = gets.chomp
if user_input.include? 's'
  user_input.gsub!(/s/, 'th')
  user_input.gsub!(/S/, 'Th')
else
  puts "No \"s\" found in input string."
end
puts "Output: #{user_input}"
