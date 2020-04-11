DESCENT_PER_DAY = 40
ASCENT_PER_NIGHT = 30

def descend_tower remaining_height
  if remaining_height <= DESCENT_PER_DAY
    return 1
  end
  return 1 + descend_tower(remaining_height - DESCENT_PER_DAY +
    ASCENT_PER_NIGHT)
end

def test_descend_tower
  [0, 10, 40, 41, 50, 51, 500].each do |height|
    puts "Days required to descend #{height} meters: #{descend_tower height}"
  end
end

test_descend_tower
