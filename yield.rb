#!/usr/bin/env ruby

def yield_name(name)
  puts "In the method! Let's yield..."
  yield("David")
  puts "Back in the method! Let's yield again..."
  yield(name)
  puts "End of the method!"
end

yield_name("Drake") { |n| puts "My name is #{n}." }
