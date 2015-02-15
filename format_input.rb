print "What's your first name?"
first_name = gets.chomp.capitalize!

print "What's your last name?"
last_name = gets.chomp.capitalize!

print "What city are you from?"
city = gets.chomp.capitalize!

print "Which state are you from? (Please use a two-letter abbreviation.)"
state = gets.chomp.upcase!

puts "#{first_name} #{last_name} #{city} #{state}"
puts "Is this correct?"
