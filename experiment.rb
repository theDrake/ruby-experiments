#!/usr/bin/env ruby

the_elder_scrolls = {
  tes_i:   "Arena",
  tes_ii:  "Daggerfall",
  tes_iii: "Morrowind",
  tes_iv:  "Oblivion",
  tes_v:   "Skyrim"
}

puts the_elder_scrolls
puts the_elder_scrolls.sort

puts "Input: "
input = gets.chomp
puts input
