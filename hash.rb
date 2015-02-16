puts "Input: "
text        = gets.chomp
words       = text.split
frequencies = Hash.new(0)
print words
words.each do |w|
  frequencies[w] += 1
end
print frequencies
frequencies = frequencies.sort_by do |w, n|
  n
end
print frequencies
frequencies.reverse!
print frequencies
frequencies.each do |w, n|
  puts w + ' ' + n.to_s
end
