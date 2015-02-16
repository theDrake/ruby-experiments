def alphabetize(arr, rev=false)
  if rev
    arr.sort!
    arr.reverse!
  else
    arr.sort!
  end
end

numbers = [65, 7, 28, 9, 0]
puts alphabetize numbers, true
